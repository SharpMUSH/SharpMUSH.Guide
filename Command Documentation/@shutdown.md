# @shutdown
`@shutdown[/panic][/reboot][/paranoid]`

@shutdown shuts down the game. It may only be used by Wizards.

`@shutdown/panic` performs a panic shutdown of the game, using a seperate database file, not the normal one. It may only be used by God.

`@shutdown/reboot` restarts the game engine without disconnecting anyone: connections are held by the connection server while the engine stops and starts again. Everyone connected is told first. The engine is started again by whatever runs it, such as Docker's restart policy; run by hand, it just stops. A restart is what starts or stops a plugin after [@plugin] changes it. It needs the `server.operate` permission.

If the `/paranoid` switch is added, the shutdown dump will be a paranoid dump (see @dump).

