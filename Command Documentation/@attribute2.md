# @attribute2
`@attribute/access[/retroactive] <attrib>=<flag list>`
`@attribute/delete <attrib>`
`@attribute/rename <attrib>=<new name>`
`@attribute/decompile[/retroactive] [<pattern>]`

`@attribute/access` adds `<attrib>` as a new standard attribute, with the default attribute flags `<flag list>`. If `<attrib>` is already a standard attribute, this command modifies its default attribute flags. Use "none" for `<flag list>` if you don't want any default attribute flags.

If the `/retroactive` switch is given with `/access`, all existing copies of the attribute will be @atrchown'd to the player running the command, and will have its flags changed to `<flag list>`.

`@attribute/delete` removes a standard attribute from the table.
`@attribute/rename` renames a standard attribute.

Only Wizards can modify the attribute table.

`@attribute/decompile` prints out a list of @attribute/access commands needed to recreate the attribute table on another MUSH. If `/retroactive` is given, that switch will be included in the output. If `<pattern>` is given, only attributes matching `<pattern>` are decompiled.

See [@attribute3].

