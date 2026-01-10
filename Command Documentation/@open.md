# @open
`@open <exit name>[=<destination>,<return exit name>,<source room>,<dbref>,<return dbref>]`

This command opens an exit, named `<exit name>`, in your current location, or in `<source room>` if one is given. Exits can only be opened from rooms. If a `<destination>` is given, the exit will be linked (as per @link) to that object. If you don't have permission to link to `<destination>`, the exit will be created but unlinked.

If `<return exit name>` is given, the MUSH will attempt to open an exit back from `<destination>` and link it to `<exit name>`'s source.

Both `<exit name>` and `<return exit name>` can include any number of aliases for the exits, separated by semicolons. See [@name] for details.

Wizards and objects with the pick_dbref power can specify garbage dbrefs to use for the exit and return exit.

To open an exit in a room, you must control the room, have the Open_Anywhere @power, or the room must be set OPEN_OK and you must pass its @lock/open.

Example:
```
> @open Up <U>;up;u;climb=#255, Down <D>;down;d;fall
```


## See Also
- [EXITS]
- [@link]
- [@dig]
- [open()]

