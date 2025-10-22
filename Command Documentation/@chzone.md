# @chzone
`@chzone[/preserve] <object>=<zone>`
`@chzone <object>=none`

The first form of this command changes the zone of `<object>` to `<zone>`. This puts the object on that zone and may (if the zone_control_zmp_only @config option is off) allow anyone who passes the Zone @lock of `<zone>` to control `<object>`. Any kind of object can be @chzoned, and any kind of object can be used as a zone.

The second form of this command removes `<object>` from its current zone, leaving it unzoned.

If a player is @chzoned, any objects he creates from that point on will automatically be on the same zone. Objects the player already owns are not affected.

You must control `<object>`, and either control `<zone>` or pass its @lock/chzone.

See [@chzone2].

