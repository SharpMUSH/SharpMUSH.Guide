# RNUM()
`rnum(<container>, <object>)`

  This function looks for an object called `<object>` located inside `<container>`. If a single matching object is found, its dbref is returned. If several matching objects are found, #-2 is returned, and if nothing matches, or you lack permission, #-1 is returned.

  You must be in `<container>`, or be able to examine it, to use this function.

  This function has been deprecated and may be removed in a future patchlevel; locate(`<container>`, `<object>`, i) should be used instead.


## See Also
- [locate()]
- [num()]
- [rloc()]
- [room()]

