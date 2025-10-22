# @nameformat
`@nameformat <object>[=<format>]`

When set, this attribute is evaluated and displayed in place of `<object>`'s name, when objects inside `<object>` "look". The room's dbref is passed as %0, and the default-formatted name (as it would be displayed with no @nameformat set) is passed as %1.

@nameformat is not used when people who are outside the object look at it.

Q-registers (set via setq() and similar functions) are passed on from the nameformat to the other @*format attributes used for formatting "look" output. Use localize() if you don't want this behaviour.

Example:
Show the room's zone after its name.
```
> @nameformat here = %1 [if(zone(%0),<[name(zone(%0))]>)]
```


## See Also
- [look]
- [@exitformat]
- [@conformat]
- [@descformat]
- [@nameaccent]
- [@invformat]
- [@idescformat]
- [iname()]

