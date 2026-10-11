# Editor and AI analysis tools

SharpMUSH offers two analysis protocols. **LSP** (Language Server Protocol) supplies editor diagnostics, completion, hover help and argument hints. **MCP** (Model Context Protocol) lets an AI client request analysis through tools. Neither remote protocol executes softcode, synchronizes attributes or tests gameplay permissions.

| Choice | Client connection | Metadata |
| --- | --- | --- |
| Offline language server | Editor starts the local server over standard input/output | Local analysis without game authentication |
| Remote LSP | Editor starts the stdio bridge; bridge connects over authenticated WSS | Refreshed metadata filtered for the authenticated character |
| Remote MCP | MCP client connects over authenticated Streamable HTTP | Refreshed metadata filtered for the authenticated character |

The remote features below are an implementation contract under development. Automated transport, bridge, editor and packaging checks are still in progress. No production boot, credentials, TLS/reverse-proxy deployment or real-socket bridge verification is claimed.

## Protocol and client compatibility

The remote MCP plugin references `ModelContextProtocol.AspNetCore` 2.2.0. A package version does not establish the negotiated MCP protocol revision or compatibility with every client; those still require implementation validation. Use a client compatible with the server's implemented lifecycle and transport. This guide does not claim support for the latest MCP revision.

Remote LSP uses the custom `sharpmush-lsp-v1` WebSocket transport and the capabilities listed below. The bridge adapts ordinary stdio clients to that transport. These capabilities do not imply support for every feature in the latest LSP specification. Protocol revision and tested client compatibility remain pending final engineering evidence.

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
metadata never execute code or expose attribute values. Settings/restart/deployment need operator
approval independently of local source work.

`Analysis:*` governs one cooperative work pool shared by both transports. For compatibility,
`Mcp:MaxConcurrentAnalyses`, `Mcp:MaxQueuedAnalyses`, `Mcp:AnalysisTimeout` are fallback values;
explicit `Analysis:*` overrides them. Deadlines include queue time and metadata resolution. Work
retains its slot until actual termination; these are cooperative deadlines, not hard preemption.

MCP stays stateless Streamable HTTP at `/mcp`. Eight tools/arguments/result DTOs remain: validate,
format, hover, complete, signature_help, document_symbols, open_document, close_document. Intelligence
uses refreshed principal-filtered metadata. Owner-local functions are not exposed as ordinary global
calls. Format retains its existing literal-whitespace limitation. The MCP limits section below describes byte, document, idle-time and HTTP caps. Enabled GET without an SSE stream returns authenticated 405.

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

## Stdio bridge and editor

Build the bridge with the same .NET 11 SDK as the server:

```sh
dotnet build SharpMUSH.LspBridge/SharpMUSH.LspBridge.csproj
```

Publish `SharpMUSH.LspBridge` for your client environment if distributing it separately. Configure your editor to launch the bridge rather than the offline server:


```sh
dotnet /path/to/SharpMUSH.LspBridge.dll --endpoint wss://game.example/lsp
```

Provide existing character credentials through the child environment variables
`SHARPMUSH_LSP_CHARACTER` and `SHARPMUSH_LSP_PASSWORD`, preferably injected from editor SecretStorage.
Do not put passwords in settings JSON, URLs, arguments, logs or committed files. The bridge accepts
only WSS endpoints without userinfo/query/fragment and verifies TLS normally; there is no insecure
certificate bypass. It uses Content-Length framed UTF-8 LSP on stdio, translating to the WS protocol.
Logging is stderr only. Bridge/connection loss exits; client restart opens a fresh authenticated
session and must initialize/reopen documents. The initial bridge requires .NET 11, like the existing
example; a Node/self-contained distribution is separate packaging work. Browser WebSocket clients
cannot supply arbitrary Basic headers; no browser-ticket/query-token mechanism is provided.

The VS Code desktop example is being updated with explicit offline/remote modes, all five
extensions, SecretStorage-driven remote launch and a tsconfig; its validation is pending. The portal's static Monaco metadata
is not a remote LSP integration. No global editor/network setup is changed by these code changes.


## MCP document and HTTP limits

The optional `SharpMUSH.Plugins.Mcp` plugin owns this state and transport. The host supplies
authentication/authorization and the analyzer. The eight tool names and arguments are unchanged. `open_document` still returns an opaque id,
`close_document` returns a boolean, and analysis accepts inline code or a document id.

Handles now belong to the authenticated `MushBasic` identity's character key, creation time and
optional account id. Identity comes from the current HTTP request, not a tool parameter. A different
character/incarnation/account cannot read or close a handle. Foreign handles behave like unknown
handles. Missing or different authentication schemes cannot access the store. This does not change
which credentials the endpoint accepts or grant game writes.

Configure these keys under the existing `Mcp` section:

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
Cancellation now reaches syntax lexing, token buffering, tree/line traversal and intelligence loops;
analysis propagates cancellation instead of disguising it as diagnostics or unchanged output.
The executor awaits actual worker termination before releasing capacity, including after timeout or
host shutdown. This is cooperative cancellation, not hard preemption: an uncooperative library call
can overrun its deadline, while retaining its worker and admission slots until it ends. Open/close
remain synchronous and document-only. Cancellation tokens are injected by the SDK and do not appear
in the eight unchanged wire schemas.

Compatibility changes: over-budget input now returns a tool error; capacity pressure no longer
silently evicts old handles; idle handles expire; handles cannot be shared across characters.
Unknown/foreign handles use the same existing error path. Handles remain process-lifetime only and
are lost on restart. The internal store now requires DI request context/options/clock rather than
an unauthenticated parameterless constructor. No tool schema gains a principal or owner argument.


## Validation boundary

Source work and local build artifacts do not enable a deployed service. Synthetic identities, virtual HTTP/WebSocket transports and framing streams exercise automated behavior without a listening port, TLS key or new credential/world fixture. Real production boot, account/password changes, TLS/reverse-proxy behavior and a separate bridge process over real sockets remain unverified. Such fixture work and operator changes require separate authorization.

Even successful analysis cannot establish that a command works in a game or that permissions are correct. Review changes and test them under the intended gameplay identity separately.
