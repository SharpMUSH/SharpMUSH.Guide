# @conformat
`@conformat <object>[=<format>]`

When set, the CONFORMAT attribute is evaluated when `<object>` is looked at, and the result is displayed instead of the usual "Contents:" (for rooms) or "Carrying:" (for players and things) list of contents.

The dbrefs of the objects which would appear in the normal contents list are passed to the attribute as %0 or `%<contents>` (you can use lcon(me) for a full contents list). A list of the names of these objects is passed as %1 or `%<names>`, |-delimited. Each is passed by position and by name (see [named arguments]).

Q-registers (set via setq() and similar functions) are inherited from the @descformat, and passed on to the @exitformat.

### Examples
Show the normal contents list, but in upper-case:
```sharp
> @conformat here=edit(ucstr(%1), |, %r)
```

Show just the object names (with no ansi) in a table:
```sharp
> @conformat here=table(iter(%<contents>, name(%i0), %b, |), 20, width(%#), |)
```


::: seealso
- [look]
- [@exitformat]
- [@nameformat]
- [@descformat]
- [@invformat]
- [@idescformat]
:::


