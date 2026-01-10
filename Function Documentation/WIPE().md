# WIPE()
`wipe(<object>[/<attribute pattern>])`

  This function is equivalent to @wipe, and attempts to wipe all the attributes on `<object>` whose names match `<attribute pattern>`, or "*" if no pattern is given. It returns nothing. Like @wipe, this function will destroy entire attribute trees; to safely remove a single attribute, use attrib_set() instead.


## See Also
- [@wipe]
- [attrib_set()]
- [set()]

