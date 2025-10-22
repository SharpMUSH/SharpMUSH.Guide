# @descformat
`@descformat <object>[=<format>]`

When set, this attribute is evaluated and displayed instead of `<object>`'s @describe, when someone looks at `<object>`. The evaluated @describe, which would be shown if no @descformat were set, is passed to the @descformt as %0; use v(describe) to get the unevaluted description.

This is primarily useful for room parents, to enforce a consistent look for all rooms without having to apply formatting to ever @describe. Note that this object is only used with @describe - to format the @idescribe, use @idescformat.

Q-registers (set via setq() and similar functions) are inherited from the @nameformat, and passed on to the @conformat.

Example:
```
> @descformat Room Parent=repeat(=, width(%#))%r%0[repeat(=, width(%#))]
```


## See Also
- [look]
- [@exitformat]
- [@nameformat]
- [@conformat]
- [@idescformat]
- [@invformat]

