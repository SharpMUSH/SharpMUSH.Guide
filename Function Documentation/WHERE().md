# WHERE()
`where(<object>)`

  This function returns the "true" location of an object. This is the standard location (i.e. where the object is) for things and players, the source room for exits, and #-1 for rooms.

  In other words, the "true" location of an object is where it is linked into the database. For example, an exit appears in the room of its "home", not its "location" (the LOC() function on an exit
  will return the latter). A room's "real" location is always Nothing (the LOC() function will return its drop-to).


## See Also
- [room()]
- [loc()]
- [rnum()]
- [locate()]
- [home()]
- [@whereis]

