# TERMINFO()
`terminfo(<player|descriptor>)`

  Returns a list with at least one element - the type of client used by the player, or "unknown" if the client being used doesn't support being asked to identify itself using RFC 1091.

  Other elements in the list describe client capabilities, and currently include:
  pueblo           present if the client is in Pueblo mode.
  telnet           present if the client understands the telnet protocol.
  gmcp             present if GMCP is negotiated via telnet; see help oob()
  ssl              present if the client is using an SSL/TLS connection.
  prompt_newlines  see [prompt_newlines]
  stripaccents     client is receiving 7-bit ascii, no accented characters

  One of the color styles shown in [colorstyle] will also be included.

  Other fields may be added in the future, if, for example, MXP support is ever added.

  You must have see_all, or use terminfo() on yourself, to see all information or use a `<descriptor>`. Mortals using terminfo() on another player will always receive "unknown" for the client name, and will not get telnet/gmcp/ssl/prompt_newlines in the output list.


## See Also
- [pueblo()]
- [width()]
- [height()]
- [ssl()]
- [@sockset]
- [oob()]

