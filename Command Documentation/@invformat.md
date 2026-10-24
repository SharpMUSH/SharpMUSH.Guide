# @invformat
`@invformat <object>[=<format>]`

When set, this attribute is evaluated and displayed instead of the usual "You are carrying:" list of objects when `<object>` uses the "inventory" command. The dbrefs of the objects that would appear in the inventory are passed as %0 or %`\<contents\>`, and a list of their names as they would appear in the usual list, |-delimited, as %1 or %`\<names\>` (see [named arguments]). If the result is empty, nothing is shown.

### Example
```sharp
> @invformat me=You're holding: [itemize(iter(%0, name(%i0), %b, |), |)]
> inventory
You're holding: Red Ball, Pickle, and Piano
```


::: seealso
- [inventory]
- [@conformat]
- [@exitformat]
- [@nameformat]
- [@descformat]
- [@idescformat]
:::

