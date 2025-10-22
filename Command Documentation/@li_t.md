# @list
`@list/<switch>`
`@list[/lowercase] <switch>`

The @list command lists useful MUSH information.

Switches include:
- motd : Alias for @listmotd, shows current messages of the day.
- functions : Lists all built-in functions and @functions.
- commands : Lists all built-in commands and @commands.
- attribs : Lists all standard attributes.
- locks : Lists the built-in lock types.
- flags : Alias for @flag/list, shows all flags.
- powers : Alias for @powers/list, shows all powers.
- allocations : Information about memory allocations. Admin-only.

By default, information is shown in upper-case. Add the `/lowercase` switch to show output in lowercase instead.

"commands" and "functions" show built-in and local commands/functions by default. The `/builtin` or `/local` switches can be given to limit this.


## See Also
- [list()]
- [@config]
- [config()]
- [functions()]
- [@stats]
- [@command]
- [@function]
- [@flag]
- [@power]
- [@attribute]
- [@listmotd]
- [@motd]
- [locktypes]

