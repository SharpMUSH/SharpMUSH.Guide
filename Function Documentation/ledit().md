# ledit()
`ledit(<list>, <find>, <replace>[, <delimiter>[, <osep>]])`

  Replaces each element of `<list>` that matches an element of `<find>` with the element in the same position in `<replace>`. A match is exact, and case matters. An element of `<find>` with no element in that position of `<replace>` is replaced with nothing. Elements that match nothing are left as they are.

  All three lists are separated by `<delimiter>`, which defaults to a space. `<osep>` separates the result and defaults to `<delimiter>`.

  Examples:
```sharp
think ledit(apple banana lime plum, banana plum, yellow purple)
apple yellow lime purple
think ledit(a|b|c, b, , |, -)
a--c
think ledit(a b c, d, x)
a b c
```

::: seealso
- [EDIT()]
- [LREPLACE()]
- [LDELETE()]
:::

