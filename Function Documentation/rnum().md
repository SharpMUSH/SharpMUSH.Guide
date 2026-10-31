# rnum()
`rnum(<container>, <object>)`

  This function looks for an object called `<object>` located inside `<container>`. If a single matching object is found, its dbref is returned. If several matching objects are found, #-2 is returned, and if nothing matches, or you lack permission, #-1 is returned.

  You must be able to examine `<container>` to use this function.

  This function is deprecated; locate(`<container>`, `<object>`, i) should be used instead.


::: seealso
- [locate()]
- [NUM()]
- [RLOC()]
- [ROOM()]
:::

