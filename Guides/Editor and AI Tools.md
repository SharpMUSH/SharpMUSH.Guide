# Editor and AI analysis tools

SharpMUSH offers two analysis protocols. **LSP** (Language Server Protocol) supplies editor diagnostics, completion, hover help and argument hints. **MCP** (Model Context Protocol) lets an AI client request analysis through tools. Neither remote protocol executes softcode, synchronizes attributes or tests gameplay permissions.

| Choice | Client connection | Metadata |
| --- | --- | --- |
| Offline language server | Editor starts the local server over standard input/output | Local analysis without game authentication |
| Remote LSP | Editor starts the stdio bridge; bridge connects over authenticated WSS | Refreshed metadata filtered for the authenticated character |
| Remote MCP | MCP client connects over authenticated Streamable HTTP | Refreshed metadata filtered for the authenticated character |

## Protocol and client compatibility

The remote MCP plugin pins `ModelContextProtocol.AspNetCore` 2.2.0. That SDK supports MCP revisions `2024-11-05`, `2025-03-26`, `2025-06-18`, `2025-11-25` and `2026-07-28`. Clients can pin a supported revision. The `2026-07-28` path uses `server/discover` and per-request metadata; older revisions use `initialize`. Default SDK clients prefer `2026-07-28`. MCP lifecycle and cancellation belong to the SDK, separate from the LSP dispatcher.

Remote LSP targets a **3.17 capability subset**, advertising only implemented capabilities. Its custom `sharpmush-lsp-v1` WebSocket transport carries the requests listed below; the bridge adapts ordinary stdio clients to it. It does not implement the whole of LSP 3.17.

## Server setup

Publish `SharpMUSH.Server` normally. Shipped optional plugins are `plugins/mcp/` and `plugins/lsp/`.
Keep each complete directory (entry DLL, manifest, dependency manifest and private SDK closure).
Both modules are boot-time and independently removable/disabled; configuration defaults to false. An operator enables only the chosen transport by setting its `Enabled` value to `true` and restarting the host. The example below shows the disabled defaults.
Removing/disabling a module or setting Enabled=false yields 404 at its reserved path, not SPA HTML.

```json
{
  "Mcp": { "Enabled": false, "Path": "/mcp" },
  "Lsp": { "Enabled": false, "Path": "/lsp" },
  "Analysis": { "MaxConcurrentAnalyses": 2, "MaxQueuedAnalyses": 8, "AnalysisTimeout": "00:00:05" },
  "AnalysisTransports": { "AllowedOrigins": [] }
}
```

Host `MushBasic` authenticates character name/password. Host `MushAnalysis` policy requires that
scheme and validates any Origin against the exact HTTP(S) allowlist. No Origin is required for native
clients; provided Origin is denied by default. No wildcard/request-Host-derived origin trust. The IP
limiter runs before named authorization, including rejected credentials. Character incarnation,
account ownership/active state and password version are refreshed before analysis. Analysis and
metadata never execute code or expose attribute values.

`Analysis:*` governs one cooperative work pool shared by both transports.
`Mcp:MaxConcurrentAnalyses`, `Mcp:MaxQueuedAnalyses` and `Mcp:AnalysisTimeout` are fallback values;
`Analysis:*` overrides them. Deadlines include queue time and metadata resolution. Work
retains its slot until actual termination; these are cooperative deadlines, not hard preemption.

MCP is stateless Streamable HTTP at `/mcp`, with eight tools: validate,
format, hover, complete, signature_help, document_symbols, open_document, close_document. Intelligence
uses refreshed principal-filtered metadata. Filtered command hover preserves command locks, including for aliases. Owner-local functions are not exposed as ordinary global
calls. The MCP limits section below describes byte, document, idle-time and HTTP caps. Enabled GET without an SSE stream returns authenticated 405.

## Remote LSP

Endpoint `wss://<game>/lsp` requires host authentication/Origin policy before upgrade. Subprotocol
`sharpmush-lsp-v1` uses one UTF-8 JSON-RPC object per WebSocket text message, no batching. It is a
custom transport for LSP; use the stdio bridge for ordinary LSP clients. `/ws` remains the terminal.

First features: initialize/shutdown/exit, full-document didOpen/didChange/didClose, diagnostics,
completion, hover, signature help, cancellation. Positions are UTF-16. File extensions:
`.mush`, `.mu` (commands per line), `.mushfn`, `.fun` (function), `.mushcmd` (command list).
No remote formatting/rename/definitions/references, attribute synchronization, execution, server
filesystem reads or transparent session/document resume. Older document versions cannot replace
newer ones, and stale analysis cannot publish into a newer or closed document. Independent sessions
remain isolated even with the same principal and URI. Metadata is refreshed per analysis operation.

| Lsp setting | Default |
| --- | --- |
| MaxDocumentBytes | 5,242,880 UTF-8 bytes |
| MaxMessageBytes | 33,554,432 raw JSON bytes |
| MaxResponseBytes | 1,048,576 raw JSON bytes |
| MaxSessions | 16 |
| MaxSessionsPerPrincipal | 2 |
| MaxDocumentsPerSession | 8 |
| MaxBytesPerSession | 33,554,432 UTF-8 bytes |
| MaxStoredBytes | 134,217,728 UTF-8 bytes across LSP sessions |
| MaxPendingRequests | 8 per session |
| MaxConcurrentReaders | 2 globally |
| MessageReadTimeout | 00:00:10 |
| IdleTimeout | 00:05:00 |
| SessionTimeout | 00:15:00 |

Limits account text/envelopes, not actual heap usage. Oversize/malformed frames or exceeded session
quotas terminate/reject the operation explicitly. Cancellation/control messages bypass work queues.
Disconnect, idle/session deadline and host stop cancel work and release documents; uncooperative
workers still retain their execution admission until termination. Responses have bounded result counts.

`MaxConcurrentReaders` bounds fragmented messages with growing buffers. Quiet clients and small single-frame control messages bypass those reader slots. If synchronization diagnostics cannot be admitted under overload, the server explicitly closes the connection rather than retaining the newest text without analysis. After an explicit close, reconnect, initialize a fresh session and reopen documents; there is no automatic document resume. A per-analysis diagnostics deadline is different: it publishes a generation-checked warning with code `analysis-timeout`, preserves usable session/document state and retries on the next edit. A timeout alone does not require reopening the document.

The editor side, the `SharpMUSH.LspBridge` stdio bridge, is in [Softcode in Your Editor](https://sharpmush.com/guides/editor-support/#remote-mode).

## MCP document and HTTP limits

The optional `SharpMUSH.Plugins.Mcp` plugin owns this state and transport. The host supplies
authentication/authorization and the analyzer. `open_document` returns an opaque id,
`close_document` returns a boolean, and analysis accepts inline code or a document id.

Handles belong to the authenticated `MushBasic` identity's character key, creation time and
optional account id. Identity comes from the current HTTP request, not a tool parameter. A different
character/incarnation/account cannot read or close a handle. Foreign handles behave like unknown
handles. Missing or different authentication schemes cannot access the store. This does not change
which credentials the endpoint accepts or grant game writes.

Configure these keys under the `Mcp` section:

| Key | Default | Meaning |
| --- | --- | --- |
| `MaxDocumentBytes` | 5,242,880 | UTF-8 bytes of stored or inline code, before analysis |
| `MaxDocumentsPerPrincipal` | 64 | Open handles for one authenticated identity |
| `MaxBytesPerPrincipal` | 33,554,432 | Total UTF-8 text bytes for that identity |
| `MaxStoredDocuments` | 1,024 | Global open handle cap |
| `MaxStoredBytes` | 134,217,728 | Global UTF-8 text budget |
| `DocumentIdleTimeout` | `00:15:00` | Idle timeout; successful owner reads renew it |
| `MaxRequestBodyBytes` | 33,554,432 | Raw HTTP envelope before JSON decoding |
| `MaxConcurrentRequests` | 4 | Global admitted HTTP requests; no waiting queue |
| `BodyReadTimeout` | `00:00:10` | Elapsed deadline for buffering a POST body |
| `MaxConcurrentAnalyses` | 2 | Global analysis workers |
| `MaxQueuedAnalyses` | 8 | Additional admitted analyses waiting for a worker |
| `AnalysisTimeout` | `00:00:05` | Elapsed analysis budget including queue time |

All budgets and the timeout must be positive. The aggregate defaults allow multiple full 5 MiB
documents. Counts and byte accounting are atomic under concurrent opens/closes. Admission rejects
new work when any budget is full instead of evicting another user. Close or idle expiry releases
budget. Foreign reads do not refresh idle time. Expiry is checked on store operations; idle entries
may remain allocated until a later operation, but remain subject to the global caps.

These are UTF-8 text accounting limits, not measured managed-heap limits. Strings, parser structures,
JSON bodies and protocol overhead consume more memory. An endpoint wrapper bounds declared and
unknown-length POST bodies before SDK JSON decoding. Authorized requests spool beyond a 64 KiB
prefix into request-owned temporary storage. Oversize bodies return 413, full HTTP admission 429,
and slow body reads 408. Client/host-stop/disposal cancellation interrupts body reads, and admission resources remain until
actual handlers finish. Authentication runs before body admission; the IP limiter runs before named
Basic authorization so failed authentication is also limited. Host Origin policy requires an exact
`AnalysisTransports:AllowedOrigins` entry when a header is present; native clients may omit Origin.
The endpoint sets Kestrel's mutable body-size feature to the configured envelope limit, preserving
other routes' limits. A proxy or a body-size feature already made read-only can impose a lower cap.
The 32 MiB default accepts a 5 MiB ASCII document even when every character is escaped as six JSON
bytes, with protocol overhead. Temporary storage and parser memory remain distinct from text quotas.

The six analysis tools acquire a global worker with an elapsed deadline and request cancellation.
Ambient shorter execution budgets remain effective. Saturated admission returns a tool error.
Cancellation reaches syntax lexing, token buffering, tree/line traversal and intelligence loops;
analysis propagates cancellation instead of disguising it as diagnostics or unchanged output.
The executor awaits actual worker termination before releasing capacity, including after timeout or
host shutdown. This is cooperative cancellation, not hard preemption: an uncooperative library call
can overrun its deadline, while retaining its worker and admission slots until it ends. Open/close
remain synchronous and document-only. Cancellation tokens are injected by the SDK and do not appear
in the tool schemas.

Over-budget input returns a tool error, and idle handles expire after `DocumentIdleTimeout`. Handles last
only as long as the process and are lost on restart. No tool takes a principal or owner argument.


## What analysis cannot tell you

Even successful analysis cannot establish that a command works in a game or that permissions are correct. Review changes and test them under the intended gameplay identity separately.

For the local language server and editor setup, see [Softcode in Your Editor](https://sharpmush.com/guides/editor-support/). For plugin authoring, see [Writing Plugins](https://sharpmush.com/guides/plugins/).
