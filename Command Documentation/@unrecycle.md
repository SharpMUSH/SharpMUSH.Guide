# @unrecycle
`@undestroy <object>`

When an object has been marked for destruction using @destroy, this command spares it from destruction, removing the GOING and GOING_TWICE flags. You must control `<object>`. `<object>`'s @startup is triggered when it is spared.

If `<object>`'s owner is marked for destruction, they will also be spared.

If `<object>` is a player and the 'destroy_possessions' @config option is on, all objects he owns will also be undestroyed. If `<object>` is a room, all exits in the room will also be undestroyed. If `<object>` is an exit and its source room is marked for destruction, it will be undestroyed.

@unrecycle is an alias for @undestroy.


## See Also
- [@destroy]
- [GOING]
- [@startup]

