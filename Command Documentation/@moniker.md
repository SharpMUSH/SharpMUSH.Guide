# @moniker
`@moniker <object>[=<moniker>]`

This command sets or clears the "moniker" for `<object>`. A moniker is an ansi template, to show the object's name in color. Exactly where this color is displayed depends on the "monikers" @config option; see [monikers] for more information.

`<moniker>` can contain any text - it will be ignored, and only the ansi colors will be taken into account. If `<object>`'s name is longer than `<moniker>`, the last color will be used for the remaining letters.

Examples:
Display your name in highligted red
```
> @moniker me=ansi(hr,-)
```

Show the first letter in orange, and the rest with no color
```
> @moniker me=ansi(+orange,-)[ansi(n,-)]
```


## See Also
- [MONIKERS]
- [moniker()]
- [ansi()]
- [@nameformat]
- [@nameaccent]
- [MONIKER]

