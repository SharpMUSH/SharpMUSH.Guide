# @link
`@link[/preserve] <object>=[<dbref> | here | home | variable]`

Links `<object>` to either a room or a thing. If a thing or player is linked, that sets the object's HOME. If a room is linked, that sets the object's drop-to room, which is where objects that are dropped in the room will be sent to.

Most often, @link is used to link or relink an exit to a destination room. In order to link an exit to a room, you must either own or control the room, OR the room must be set LINK_OK. If the exit is currently unlinked, and you pass its @lock/link, you may link it even if you do not own it. In this case, the exit will be @chowned to you (and set HALT). Linking an exit may have a cost (usually 1 penny.) The Wizard-only `/preserve` switch can be used to link without @chowning and HALTing the exit.

If the destination of an exit is "variable", its destination is determined at the time of travel by the attribute DESTINATION on the exit, which is evaluated like a U()-function. You must have permission to link to whatever the DESTINATION evaluates to in order for the exit to work. If there's no DESTINATION attribute, the EXITTO attribute is also tried.

If the destination is "home", those who travel through the exit will be sent to their homes.

LINK_OK objects can also be used as semaphores, and any object can be @parented to them.


## See Also
- [EXITS]
- [@open]
- [@dig]
- [DROP-TO]
- [HOME]

