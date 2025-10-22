# @idescformat
`@idescformat <object>[=<format>]`

When set, this attribute is evaluated and displayed instead of `<object>`'s @idescribe, when someone looks at `<object>` while inside it. The evaluated @idescribe, which would be shown if no @idescformat were set, is passed to the @idescformt as %0; use v(idescribe) to get the unevaluted description.

Note that this attribute is only used when an @idescribe is set. When no @idescribe is set, the @descformat (and @describe) attributes are used, even when someone "look"s inside `<object>`.

This is useful for things like object parents that enforce a consistent "look" for each object's @idescribe, without having to place formatting into every @idescribe.

Q-registers (set via setq() and similar functions) are inherited from the @nameformat, and passed on to the @conformat.

Example:
```
> @idescribe Vehicle Parent=repeat(*, width(%#))%r%0
```


## See Also
- [look]
- [@exitformat]
- [@nameformat]
- [@conformat]
- [@descformat]
- [@invformat]

