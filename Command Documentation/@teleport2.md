# @teleport2
Teleporting to an exit works the same as using "goto". If you don't control the exit and don't have the tport_anywhere power, either you or `<object>` must be nearby the exit.

Teleportation from a room can be stopped by setting the NO_TEL flag. Royalty and Wizards can _always_ teleport to any location, regardless of NO_TEL or teleport locks.

Teleportation triggers the @oxtport/@tport/@otport/@atport attributes, unless `<room>` is an exit or the `/silent` switch is given. With @oxtport, %0 is the dbref of the object causing the dbref. The others, in addition to %0, get the former location of the object that was teleported passed in %1.

As a special case, using "home" as the `<room>` has the same effect as the home command, and does not act like a normal teleport.


## See Also
- [JUMP_OK]
- [NO_TEL]
- [Z_TEL]
- [@tport]
- [@lock]

