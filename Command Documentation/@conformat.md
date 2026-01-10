# @conformat
`@conformat <object>[=<format>]`

When set, the CONFORMAT attribute is evaluated when `<object>` is looked at, and the result is displayed instead of the usual "Contents:" (for rooms) or "Carrying:" (for players and things) list of contents.

The dbrefs of the objects which would appear in the normal contents list are passed to the attribute as %0 (you can use lcon(me) for a full contents list). A list of the names of these objects as they would appear in the default contents list is passed as %1, |-delimited.

Q-registers (set via setq() and similar functions) are inherited from the @descformat, and passed on to the @exitformat.

Examples:
Show the normal contents list, but in upper-case:
```
> @conformat here=edit(ucstr(%1), |, %r)
```

Show just the object names (with no ansi) in a table:
```
> @conformat here=table(iter(%0, name(%i0), %b, |), 20, width(%#), |)
```


## See Also
- [look]
- [@exitformat]
- [@nameformat]
- [@descformat]
- [@invformat]
- [@idescformat]

