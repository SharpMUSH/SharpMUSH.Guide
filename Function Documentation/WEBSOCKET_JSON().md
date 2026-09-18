# WEBSOCKET_HTML()
# WEBSOCKET_JSON()
`websocket_html(<html>[, <player>])`<br>
`websocket_json(<json>[, <player>])`

  Reserved for sending raw HTML or a raw JSON payload out-of-band to a WebSocket client, defaulting to the caller when no `<player>` is given.

  **Neither function is implemented yet.** Both validate their arguments and then return an error; no data reaches any connection. They are registered so that softcode written against them keeps its name, and so that this gap is visible from in-game help rather than only from the source. Use [oob()] for GMCP, which does work.

  These are SharpMUSH functions; PennMUSH has neither.


**See Also:**
- [oob()]
- [json()]

