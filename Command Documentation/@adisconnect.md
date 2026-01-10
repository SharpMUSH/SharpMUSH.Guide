# @adisconnect
`@adisconnect <object>[=<action list>]`

Sets the actions to be taken by `<object>` when a player disconnects from the game. @adisconnects are triggered on disconnecting players, their locations (if the room_connects @config option is true), their zone object/objects in their zone master room, and objects in the Master Room.

Several arguments are passed to @adisconnect:
%1 = number of remaining connections (0 if a full disconnect)
%2 = bytes received by the disconnecting descriptor
%3 = bytes sent by the disconnecting descriptor
%4 = commands issued by the disconnecting descriptor
%5 = 1 if the descriptor was hidden on disconnect, 0 otherwise

Example:
```
> @adisconnect me = home
```


## See Also
- [@aconnect]
- [ACTION LISTS]
- [recv()]
- [sent()]
- [cmds()]
- [EVENTS]

