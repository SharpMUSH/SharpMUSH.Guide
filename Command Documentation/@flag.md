# @flag
`@flag <flag name>`
`@flag/list [<flag name pattern>]`
`@flag/add <flag name>=[<letter>], [<type(s)>], [<setperms>], [<unsetperms>]`
`@flag/delete <flag name>`
`@flag/alias <flag name>=<alias>`
`@flag/letter <flag name>[=<letter>]`
`@flag/restrict <flag name>=[<setperms>], [<unsetperms>]`
`@flag/type <flag name>=<type(s)>`
`@flag/enable <flag name>`
`@flag/disable <flagname>`
`@flag/decompile [<pattern>]`

This command manipulates the list of flags in the database. With no switches, the command displays information about the given flag, including aliases and permissions. `@flag/list` lists names of enabled flags, and may be given a wildcarded pattern to restrict which names it will show.

All other switches to this command are restricted to God:
- /disable disables a flag, making it invisible and unusable
- /enable re-enables a disabled flag
- /alias adds a new alias for an existing flag; use !`<alias>` to delete one.
- /letter changes or removes a single-letter alias for an existing flag.
- /restrict changes flag permissions (see help @flag2)
- /type changes flag type(s) (see help @flag2)
- /delete deletes a flag completely, removing it from all objects in the database and then removing it permanently from the flag table. It requires the exact flag name or alias to be used. Be very very careful with this.
- /decompile prints out a list of @flag/add commands needed to recreate the flag table on another MUSH. If `<pattern>` is given, only flags whose names match that wildcard pattern are shown.

See [@flag2] for information on `@flag/add`.


## See Also
- [FLAGS]
- [@set]
- [@power]
- [flag permissions]

