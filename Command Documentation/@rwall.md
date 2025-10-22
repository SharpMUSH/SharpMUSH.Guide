# @wall
# @rwall
# @wizwall
`@wall[/emit][/noeval] <message>`
`@rwall[/emit][/noeval] <message>`
`@wizwall[/emit][/noeval] <message>`

@wall sends `<message>` to all connected players. @rwall only sends the message to connected wizards and royalty, and @wizwall is seen only be wizards.

`<message>` can be prefixed with : or ; to pose or semi-pose it, respectively, or the `/emit` switch can be given to emit the message. If `<message>` begins with a " and the chat_strip_quote option is on, the " will be stripped.

The message is prefixed with the value of the wall_prefix, rwall_prefix or wizwall_prefix options, depending on the command used.


## See Also
- [@wizwall]
- [@rwall]

