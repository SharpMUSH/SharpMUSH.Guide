# websocket_html()
`websocket_html(<html>[, <player>])`

  Reserved for sending raw HTML out-of-band to a WebSocket client, defaulting to the caller when no `<player>` is given.

  **It is not implemented yet.** It checks that `<player>` exists and then returns nothing; no data reaches any connection. It is registered so that softcode written against it keeps its name, and so that this gap is visible from in-game help rather than only from the source. Use [wshtml()] for HTML in the text, and [OOB()] for JSON, which reaches GMCP and WebSocket clients.

  This is a SharpMUSH function; PennMUSH has none.


::: seealso
- [OOB()]
- [json()]
:::

