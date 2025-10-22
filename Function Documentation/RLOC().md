# RLOC()
`rloc(<object>, <levels>)`

  This function may be used to the get the location of `<object>`'s location (and on through the levels of locations), substituting for repeated nested loc() calls. `<levels>` indicates the number of loc()-equivalent calls to make; i.e., loc(loc(`<object>`)) is equivalent to rloc(`<object>`,2). rloc(`<object>`,0) is equivalent to num(`<object>`), and rloc(`<object>`,1) is equivalent to loc(`<object>`).

  If rloc() encounters a room, the dbref of that room is returned. If rloc() encounters an exit, the dbref of that exit's destination is returned. You must control `<object>`, be near it, or it must be a findable player.


## See Also
- [loc()]
- [where()]
- [room()]
- [rnum()]
- [locate()]

