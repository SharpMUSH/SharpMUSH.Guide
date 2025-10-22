# @allhalt
`@halt[/noeval] <object>[=<action list>]`
`@halt/pid <pid>`
`@halt/all`
`@allhalt`

The @halt command removes all queued actions for `<object>`. If given, `<action list>` is placed in the queue for the object instead. If no action list is specified, the object is set HALT.

If `<object>` is a player, it clears the queue for the player and all of his objects. You can use "@halt me" to clear your own queue without setting yourself HALT.

Only wizards and objects with the halt @power can @halt other player's objects. Note that halting an object does NOT affect any objects waiting on it as a semaphore.

`@halt/pid` will cancel a single queue entry with the given pid (the number in parenthesis before it in @ps). You must control the object that queued the command or have the halt power to do this.

`@halt/all` is a synonym for @allhalt, and is a wizard-only command which halts all objects in the game in an effort to free up the queue.


## See Also
- [@wait]
- [@ps]
- [SEMAPHORES]
- [@drain]
- [@notify]

