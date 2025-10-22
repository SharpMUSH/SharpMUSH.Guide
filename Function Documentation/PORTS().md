# PORTS()
`lports([<viewer>[, <status>]])`
`ports(<player name>)`

  These functions return the list of descriptors ("ports") that are used by connected players. lports() returns all ports, in the same order as lwho() returns dbrefs, and ports() returns those a specific player is connected to, from most recent to least recent. Mortals can use ports() on themselves, but only See_All players can use ports() on others, or use lports().

  If lports() is given a `<viewer>`, only the ports of connections which `<viewer>` can see are returned, in the same way as lwho(`<viewer>`) works.

  The `<status>` argument for lports() controls whether or not ports which are not connected to (ie, at the login screen) are included, and must be one of "all", "online" or "offline".

  These port numbers also appear in the wizard WHO, and can be used with @boot/port, page/port, and the functions that return information about a connection to make them use a specific connection rather than the least-idle one when a player has multiple connections open. Players can get information about their own connections. See_all is needed to use them to get information about other people's ports.


## See Also
- [lwho()]
- [player()]
- [Connection Functions]

