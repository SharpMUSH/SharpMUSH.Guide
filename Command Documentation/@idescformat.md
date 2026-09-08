# @idescformat
`@idescformat <object>[=<format>]`

When set, this attribute is evaluated and displayed instead of `<object>`'s inside description when someone looks at `<object>` while inside it. The evaluated @idescribe is passed to @idescformat as %0; use v(idescribe) to get the unevaluated description.

If no @idescribe is set, @idescformat formats the evaluated @describe instead. When neither @idescribe nor @idescformat is set, the normal @describe and @descformat attributes are used.

This is useful for things like object parents that enforce a consistent "look" for each object's @idescribe, without having to place formatting into every @idescribe.

Q-registers (set via setq() and similar functions) are inherited from the @nameformat, and passed on to the @conformat.

### Example
```sharp
> @idescribe Vehicle Parent=repeat(*, width(%#))%r%0
```


**See Also:**
- [look]
- [@exitformat]
- [@nameformat]
- [@conformat]
- [@descformat]
- [@invformat]

