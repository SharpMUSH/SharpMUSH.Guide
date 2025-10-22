# @firstexit
`@firstexit <exit1>[, ... , <exitN>]`

Normally, exits appear in a room's Obvious exits list in the order they were created, most recent first. You can use this command to rearrange them. @firstexit moves each exit, in the order given, to the top of the Obvious exits list for its source room. You must control the room.

Example:
```
> @dig/teleport Test Room
> @open Two ; @open Three ; @open One
> look
Test Room(#3Rn)
Obvious exits:
One, Three, and Two
> @firstexit two, one
> look
Test Room(#3Rn)
Obvious exits:
One, Two, and Three
```


## See Also
- [EXITS]
- [@open]
- [@link]

