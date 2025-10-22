# @invformat
`@invformat <object>[=<format>]`

When set, this attribute is evaluated and displayed instead of the usual "You are carrying:" list of objects when `<object>` uses the "inventory" command. The list of objects that would normally appear in the inventory is passed as %0, and a list of the names as they would appear in the default display, |-delimited, is passed as %1.

Example:
```
> @invformat me=You're holding: [itemize(iter(%0, name(%i0), %b, |), |)]
> inventory
You're holding: Red Ball, Pickle, and Piano
```


## See Also
- [inventory]
- [@conformat]
- [@exitformat]
- [@nameformat]
- [@descformat]
- [@idescformat]

