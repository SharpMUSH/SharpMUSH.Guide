# @boot
`@boot[/silent] <player>`
`@boot/port[/silent] <descriptor number>`
`@boot/me`

The first form of this command disconnects all of `<player>`'s connections from the game.

The `/port` switch disconnects a particular descriptor (as shown under "Des" in the Wizard WHO, returned by lports() and ports(), etc).

If the `/silent` switch is given, the message telling `<player>` he was booted is suppressed.

The `/me` switch boots all descriptors for the player using the command which have been idle for over 1 minute. Players can use this command to terminate hung connections.

Only admin and those with the "boot" power can @boot other players.


## See Also
- [QUIT]
- [LOGOUT]

