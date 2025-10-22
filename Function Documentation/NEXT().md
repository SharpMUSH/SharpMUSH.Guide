# NEXT()
`next(<object>)`

  If `<object>` is an exit, then next() will return the next exit in `<object>`'s source room. If `<object>` is a thing or a player, then next() will return the next object in the contents list of `<object>`'s location. Otherwise, it returns a #-1. #-1 is also used to denote that there are no more exits or objects after `<object>`.

  You can get the complete contents of any container you may examine, regardless of whether or not objects are dark. You can get the partial contents (obeying DARK/LIGHT/etc.) of your current location or the enactor (%#). You CANNOT get the contents of anything else, regardless of whether or not you have objects in it. These rules apply to exits, as well.


## See Also
- [lcon()]
- [lexits()]
- [con()]
- [exit()]

