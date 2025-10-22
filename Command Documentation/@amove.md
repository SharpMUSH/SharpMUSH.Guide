# @amove
`@move <object>[=<message>]`
`@omove <object>[=<message>]`
`@oxmove <object>[=<message>]`
`@amove <object>[=<action list>]`

These attributes contain the message shown to `<object>` immediately after it moves, the message shown to others in the room `<object>` moves into, the message shown to objects in the location `<object>` leaves, and the actions to be taken when `<object>` moves, respectively. Please note that long @omoves are frequently found annoying.

The `<object>`'s new location is in %0 and the old location it moved from in %1.

Example:
```
> @move me=You moved! You are now in the room: [name(here)].
> @omove me=stalks into the room wearing a malevolent expression.
> @oxmove me=stalks away, glaring.
```


## See Also
- [goto]
- [@oxmove]
- [ACTION LISTS]
- [VERBS]

