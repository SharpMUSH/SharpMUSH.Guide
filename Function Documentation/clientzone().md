# clientzone()
`clientzone(<player|descriptor>)`

  Returns the time zone the player's client reported for its connection, such as Europe/Paris, or nothing when it reported none. The web portal reports the browser's zone. A telnet client reports one when it sends TZ through NEW-ENVIRON, which BSD telnet does after `environ export TZ` and PuTTY does when TZ is set under Connection, Data, Environment variables. Most MUD clients send none.

  The zone is only what the client said. It never changes the player's TZ attribute; softcode decides what to do with it, and the socket\`timezone event says when a client reports one. A player who is not connected gives #-1 NOT CONNECTED. You must be See_All to use this function on another player or a descriptor that is not yours.

  Example, in the web portal:
```sharp
think clientzone(me)
Europe/Paris
```

::: seealso
- [SSL()]
- [TERMINFO()]
- [TIME()]
- [EVENTS]
:::

