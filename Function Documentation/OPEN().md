# OPEN()
`open(<exit name>[, <destination>[, <source>[, <dbref>]]])`

  This function attempts to open an exit named `<exit name>`. The exit will be opened in the room `<source>`, if given, or the caller's current location if no `<source>` is specified.

  If a `<destination>` is given, it will attempt to link the exit to `<destination>` after opening it.

  Wizards and objects with the pick_dbref power can specify a garbage dbref to use for the new exit.

  It returns the dbref of the newly created exit, or #-1 on error.


## See Also
- [@open]
- [@link]
- [dig()]
- [link()]
- [create()]
- [pcreate()]

