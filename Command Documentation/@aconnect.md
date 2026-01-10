# @aconnect
`@aconnect <object>=<action list>`

Sets the actions to be taken by `<object>` when a player connects to the game. @aconnects are triggered on connecting players, their locations (if the room_connects @config option is true), their zone object/objects in their zone master room, and objects in the Master Room.

Note that long and spammy @aconnect messages, whether in your room or on a channel, are frequently found annoying by other players.

One argument is passed to @aconnect:
%1 = number of player connections (1 if this is an initial connect)

Example:
```
> @aconnect me=+who ; +bbscan
```


## See Also
- [@adisconnect]
- [ACTION LISTS]
- [EVENTS]

