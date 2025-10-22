# @failure
`@failure <object>[=<message>]`
`@ofailure <object>[=<message>]`
`@afailure <object>[=<action list>]`

@failure contains the message shown to someone who fails to pass `<object>`'s Basic @lock. @ofailure contains the message shown to others, and @afailure contains the actions to be taken by `<object>`.

For players and things, this means failure to get/take. For exits, it means failure to go through the exit. For rooms the lock is checked when objects "look" inside the room, though failure to pass the lock does not prevent the object from looking.


## See Also
- [get]
- [move]
- [@lock]
- [ACTION LISTS]
- [VERBS]
- [@success]

