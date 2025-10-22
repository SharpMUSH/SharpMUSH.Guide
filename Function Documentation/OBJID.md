# OBJID()
`objid(<object>)`

  This function returns the object id of `<object>`, a value which uniquely identifies it for the life of the MUSH. The object id is the object's dbref, a colon character, and the object's creation time, in seconds since the epoch, equivilent to [num(`<object>`)]:[csecs(`<object>`)]

  The object id can be used nearly anywhere the dbref can, and ensures that if an object's dbref is recycled, the new object won't be mistaken for the old object.

  The substitution %: returns the object id of the enactor.


## See Also
- [num()]
- [csecs()]
- [ctime()]
- [ENACTOR]

