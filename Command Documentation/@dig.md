# @dig
`@dig[/teleport] <room name>[=<exit to>, <exit from>, <room dbref>, <to dbref>, <from dbref>]`

This command creates a new room named `<room name>`. Creating a room costs some pennies (see '@config room_cost' for exactly how many). If the `/teleport` switch is given, you will be teleported to the room after it's created, as per the @teleport command.

If `<exit to>` is given, the MUSH will automatically open an exit from your current location to the new room named `<exit to>`, if you have permission. You can also specify `<exit from>`, to create an exit from the new room back to your current location. Opening exists also costs pennies; see '@config exit_cost'. The exit names may contain multiple aliases, separated with semicolons, as per [@name].

Wizards and objects with the pick_dbref power can also specify the dbrefs of garbage objects to use when creating the room and the to and from exits.

See [@dig2] for examples.
# @dig2
Examples:
```
> @dig Kitchen
```
This command will create a new room named 'Kitchen'. You will be informed what the dbref of this room is.
```
> @dig Kitchen=Kitchen <N>;n;north;kitchen;k
```
This will create the room as above, and also open an exit leading to it named "Kitchen <N>" with the aliases n, north, kitchen and k. It will NOT create an exit coming back from the Kitchen room.
```
> @dig Kitchen=Kitchen <N>;n;north;kitchen;k, Out <S>;s;south;out;o
```
This will do just the same as the above, except it will also create an exit named `Out <S>` with the aliases s, south, out and o coming back from the kitchen to whatever room you are currently in.


## See Also
- [@open]
- [@link]
- [EXITS]
- [@create]
- [DBREF]
- [dig()]

