# take
`get <object>`
`get <box>'s <object>`

The first form of this command lets you pick up `<object>` from your current location. The second form allows you to take `<object>` from inside `<box>`'s inventory.

In both cases, you must pass `<object>`'s Basic @lock, and the @lock/take of it's location.

To get an object from someone else's inventory, the possessive_get @config option must be true (and, if `<box>` is a disconnected player, so must possessive_get_d). `<box>` must also be set ENTER_OK.

'take' is usually an alias for the 'get' command.


## See Also
- [@lock]
- [ENTER_OK]
- [give]
- [drop]
- [@success]
- [inventory]

