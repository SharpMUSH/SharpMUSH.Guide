# @adisconnect
`@adisconnect <object>[=<action list>]`

Sets the actions to be taken by `<object>` when a player disconnects from the game. @adisconnects are triggered on disconnecting players, their locations (if the room_connects @config option is true), their zone object/objects in their zone master room, and objects in the Master Room.

One argument is passed to @adisconnect:<br>
%1 = number of remaining connections (0 if a full disconnect)

### Example
```sharp
> @adisconnect me = home
```

::: seealso
- [@aconnect]
- [action lists]
- [RECV()]
- [SENT()]
- [CMDS()]
- [EVENTS]
:::

