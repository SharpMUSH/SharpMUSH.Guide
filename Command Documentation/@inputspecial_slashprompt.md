# @input
# @input/start
# @input/prompt
# @input/cancel

`@input/start <object>/<attribute>=<prompt>[,<timeout-seconds>]`
`@input/prompt <prompt>`
`@input/cancel`

  Starts a guided input session on the current Telnet or WebSocket connection. The connection must be logged in to a character, and that character must be the command's enactor. There is no handle or player selector. The initiating executor must control the callback object and have both read and execute access to its directly stored attribute. Omitting `/start` also starts a session.

  Each received input message invokes the callback with the exact input in `%0` and `input` in `%1`. Empty input and whitespace are accepted. Brackets, semicolons, percent substitutions, and newlines are literal data; they are not interpreted as commands or expressions. A transport that sends a paste as separate lines invokes the callback for each line. Capture continues until explicitly ended, so later pasted lines do not accidentally become commands.

  The callback runs as the initiating executor, with that executor as caller and the connected character as enactor. It gets fresh registers and evaluation limits on each invocation. Input callbacks use the normal admitted input entry and its execution budget. Queue rejection consumes no execution capacity; it never turns captured input into ordinary commands. Timeout callbacks also require normal queue admission.

  From the callback, use `@input/prompt` to send another prompt to this connection, or `@input/start` to replace the session. A new session invalidates queued responses to the former session. Replies waiting behind session startup, including blank replies, belong to the first session opened after they were queued. Replacing that session discards its remaining queued replies, including queued cancel messages. If that session ends before they execute, they are discarded rather than run as commands. `@input/cancel` ends capture and restores ordinary commands. Cancellation prevents callbacks already running on this connection from reopening or managing capture; a later independent start is still allowed. A player can always leave by sending exactly `@input/cancel` (case-insensitive) as a complete input message. This escape is checked before queue admission, even when the queue is full. Extra spaces or appended commands make it ordinary literal session data.

  Timeout defaults to 60 seconds and may be 1–3600 seconds. It is measured from session start and is not extended by input or prompts. At expiry, capture ends; the callback receives empty `%0` and `timeout` in `%1`. Sending the cancel escape after expiry does not suppress an already pending timeout callback. Starting another session is refused while the expired generation still owes its timeout callback; the timeout callback itself may start the next session. The callback is skipped if its binding or authority has changed or admission fails. Disconnect, logout, character switch, replacement, and engine restart end capture without invoking a callback. A halted executor, unhandled callback failure, or an exhausted execution budget also ends capture.

  Every delivery rechecks the connection incarnation, full character and callback identities, ownership, control, and attribute access. These checks share the callback execution budget. Prompts are bound to the original connection and are discarded if that connection is replaced before delivery. Changed ownership, deleted/recycled objects, or revoked permission end the session safely. Two connections playing the same character have independent sessions and cannot consume one another's input. There may be at most 1024 sessions globally, 64 per initiating owner, and one per connection. An input message may contain at most 65,536 UTF-16 code units; longer input is rejected while capture remains active.

  This example stores one answer as data and explicitly closes its session:

```sharp
&INPUT`SAVE me=@assert strmatch(%1,input)=@pemit %#=Input timed out.; &DATA`ANSWER me=%0; @pemit %#=Saved your answer.; @input/cancel
@set me/INPUT`SAVE=cmdsyntax
@input/start me/INPUT`SAVE=Describe your character:,120
```

  Read the answer later with `` get(me/DATA`ANSWER) ``. Evaluating player-supplied text is an explicit application choice; ordinary storage and substitution preserve it as data.

**See Also:**
- [@prompt]
- [@trigger]
- [@include]


