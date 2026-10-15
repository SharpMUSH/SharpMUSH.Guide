# MSSP-REQUEST
`MSSP-REQUEST`

This socket command shows what the game reports to MUD crawlers and bots through the MUD Server Status Protocol (MSSP), as tab-separated `NAME<tab>value` lines between `MSSP-REPLY-START` and `MSSP-REPLY-END`. The MSSP telnet option sends the same report.

The server fills in what it knows: the game's name (`mud_name`), the players connected, when it started, its ports (`port`, `ssl_port`), its website (`mud_url`), the codebase, and the protocols it speaks. Everything else (genre, contact address, Discord, and so on) is the `mssp` configuration option, set from the portal's MSSP page under Configuration. A PennMUSH `mush.cnf` import carries over its `mssp name/value` lines.

A variable with several values repeats its name on one line per value, the default last. For the variables crawlers read, see https://tintin.mudhalla.net/protocols/mssp/


::: seealso
- [INFO]
:::

