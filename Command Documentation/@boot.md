# @boot
`@boot[/silent] <player>`<br>
`@boot/port[/silent] <descriptor number>`<br>
`@boot/me`

The first form of this command disconnects `<player>`'s most recent connection from the game.

The `/port` switch disconnects a particular descriptor (as shown under "Des" in the Wizard WHO, returned by lports() and ports(), etc).

If the `/silent` switch is given, the message telling `<player>` he was booted is suppressed.

The `/me` switch disconnects the connection you typed the command on.

Anyone may @boot their own connections. Only holders of `players.moderate` and those with the "boot" power can @boot other players, and each time they do it is recorded in the audit log.


::: seealso
- [QUIT]
- [LOGOUT]
:::

