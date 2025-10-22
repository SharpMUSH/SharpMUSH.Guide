# @prompt
`@prompt[/<switch>] <dbref list>[=<message>]`

A variation of `@pemit/list` that adds a telnet GOAHEAD control code to the end of messages sent to players. Players with clients that handle GOAHEAD may get the message as a prompt in their client's input area.

If `<message>` is omitted, an empty prompt is sent.

@prompt supports the following @pemit switches: `/silent`, `/noisy`, `/spoof`, `/noeval`


## See Also
- [@pemit]
- [@nsprompt]
- [prompt()]
- [nsprompt()]
- [PROMPT_NEWLINES]

