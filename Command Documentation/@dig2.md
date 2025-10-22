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

