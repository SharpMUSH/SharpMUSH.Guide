# @shutdown
`@shutdown[/panic][/reboot][/paranoid]`

@shutdown tells everyone connected that the game is shutting down and logs it, but does not stop the game: the server's process is stopped by whatever runs it, such as Docker or the host. The world is saved as it changes, so there is nothing to save first. It needs the `server.operate` permission.

`@shutdown/panic` does the same, logged as a panic. It may only be used by God.

`@shutdown/reboot` restarts the game engine without disconnecting anyone: connections are held by the connection server while the engine stops and starts again. Everyone connected is told first. The engine is started again by whatever runs it, such as Docker's restart policy; run by hand, it just stops. A restart is what starts or stops a plugin after [@plugin] changes it. It needs the `server.operate` permission.

`@shutdown/paranoid` announces that the database is being saved and logs the request; it writes nothing, because the world is always on disk.

