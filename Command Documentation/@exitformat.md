# @exitformat
`@exitformat <object>[=<format>]`

When set, the exitformat attribute is evaluated and shown in place of the "Obvious exits" list for a room. (It has no meaning when set on other types of object.) The dbrefs of the exits which would appear in the default "Obvious exits" list is passed to the attribute as %0, and by name as %`\<exits\>` (see [named arguments]), as a space-separated list; you can use lexits(me) to get all the exits in the room.

Q-registers (set via setq() and similar functions) are inherited from the @conformat.

### Example
```sharp
> @exitformat here=Exits: [itemize(iter(%0, name(%i0)))]
```

The same, reading the exits by name:
```sharp
> @exitformat here=Exits: [itemize(iter(%<exits>, name(%i0)))]
```


::: seealso
- [TRANSPARENT]
- [@conformat]
- [@nameformat]
- [@descformat]
:::

