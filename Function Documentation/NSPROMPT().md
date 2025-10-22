# NSPROMPT()
`pemit(<object list|port numbers>, <message>)`
`nspemit(<object list|port numbers>, <message>)`
`prompt(<object list>, <message>)`
`nsprompt(<object list>, <message>)`

  With an `<object list>`, pemit() will send each object on the list a message, as per the @pemit/list command. It returns nothing. It respects page-locks and HAVEN flags on players. With `<port numbers>`, pemit() sends the message to the specified ports only, like @pemit/port/list.

  nspemit() works like @nspemit/list.

  prompt() adds a telnet GOAHEAD to the end of the message, as per the @prompt command. nsprompt() that works like @nsprompt.


## See Also
- [@prompt]
- [@nsprompt]
- [PROMPT_NEWLINES]

