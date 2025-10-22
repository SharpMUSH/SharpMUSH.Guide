# LOC()
`loc(<object>)`

  For things and players, loc() returns the dbref of the object which contains `<object>`. For rooms, it returns the drop-to, if one is set, or #-1 otherwise. For exits, it returns the destination (the source is an exits home()). This will be #-1 for unlinked exits, #-2 for variable exits, and #-3 for exits @linked to "home".

  You must be able to examine `<object>`, or be near it, for this function to work. A special case exists when `<object>` is a player: As long as `<object>` is not set UNFINDABLE, and you are allowed to use the @whereis command, you can get `<object>`'s location.

  You can also get the location of the enactor using the %L substitution, whether you are near to/can examine it or not.


## See Also
- [locate()]
- [rloc()]
- [home()]
- [where()]
- [rnum()]
- [room()]
- [@link]
  UNFINDABLE, @whereis

