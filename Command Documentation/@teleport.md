# @teleport
`@teleport[/<switches>] [<object>=]<destination>`
`@teleport/list[/<switches>] <object-list>=<destination>`

Teleports `<object>` to `<destination>`. `<object>` can be a player, thing or exit, and defaults to yourself. (Exits must be specified by dbref, things or players can be specified by name.) The destination must be either JUMP_OK or controlled by you, and you must either control `<object>` or `<object>`'s current location. Also, the destination, if a room, cannot be teleport-locked against `<object>`. Mortals cannot teleport HEAVY objects. If the destination is a room with a drop-to, `<object>` may go to the drop-to room instead.

If the `/list` switch is given, each object specified in `<object-list>` will be teleported to `<destination>` instead. Names containing spaces should be enclosed in "double quotes".

Admin and those with the tport_anything power can teleport an object even if they don't control it. Those with tport_anywhere can teleport objects to any destination. You can also teleport an exit to any room if you have the Open_Anywhere power.

Privileged players who teleport a player to another player send them to the location of the target, unless the `/inside` switch is used, in which case they are sent to the inventory of the target.

See [@teleport2].

