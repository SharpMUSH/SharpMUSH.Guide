# ZMWHO()
`zwho(<object>[, <viewer>])`
`zmwho(<object>)`

  These functions return the dbrefs of all currently-connected players in locations @chzone'd to `<object>`. zmwho() does not include hidden players, while zwho() returns all players that the caller can see are online. You must be See_All or pass `<object>`'s @lock/zone to use these functions.

  See_All players can pass a `<viewer>` argument to zwho() to get only those players that `<viewer>` can see is online.


## See Also
- [lwho()]
- [nwho()]
- [zone()]
- [zfun()]
- [zemit()]

