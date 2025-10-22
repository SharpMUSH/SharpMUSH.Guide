# @scan
`@scan[/<switches>] <command>`

@scan gives you a list of all objects containing $-commands (user-defined commands) which could match `<command>`. If given no switches, it checks you, your possessions, your location, objects in your location, the zone/zone master room of your location, your zone, and objects in the master room. It does NOT stop when it gets a match, but rather, finds all possible matches. It also tells how many commands on each object were matched, and what attributes they are in. It does NOT scan objects that you do not control and are not set VISUAL.

This command any combination of these four switches:
- /room -- just matches on your location and objects in it.
- /self -- just matches on you and anything you're carrying.
- /zone -- just matches on zones of your location and yourself.
- /globals -- just matches on objects in the master room.

If no switch is given, all locations are checked. `<command>` must be entered exactly as you would type it (so, to match the $-command `$foo *:` you must type '`@scan foo <something>`', not just '`@scan foo`').


## See Also
- [$-commands]
- [EVALUATION ORDER]

