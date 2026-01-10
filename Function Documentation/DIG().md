# DIG()
`dig(<name>[, <exit to>[, <exit from>[, <room dbref>, <to dbref>, <from dbref>]]])`

  This function digs a room called `<name>`, and optionally opens and links `<exit to>` and `<exit from>`, like the normal @dig command. It returns the dbref number of the new room.

  Wizards and objects with the pick_dbref power can supply optional fourth through sixth arguments to specify garbage objects to use for the new room and exits.


## See Also
- [@dig]
- [open()]
- [@open]
- [create()]
- [pcreate()]

