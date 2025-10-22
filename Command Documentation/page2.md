# page2
Page will attempt a partial match on the name, checking both for an @alias and to see if the name matches someone connected. If the first character of `<message>` is a : or a ;, it will send the page in pose format.

Objects may page players, but not vice versa. If an object pages a NOSPOOF player, that player will see the object's number in square brackets, in front of the message, in a fashion similar to the way NOSPOOF flags emits.

When a player is paged, their PAGEFORMAT attribute is checked, and if exists, the page as viewed by the player is set to the results of calling PAGEFORMAT. See help @pageformat.

Page takes three switches: `/noeval`, `/override`, and `/port`.

The `/noeval` switch prevents the MUSH from evaluating the message.
The `/override` switch is admin-only, and overrides pagelocks and HAVEN.
The `/port` switch is admin-only, and will page a single port descriptor directly, including connections that have not yet logged into a player.


## See Also
- [@lock]
- [@alias]
- [@pageformat]
- [pose]
- [:]
- [;]
- [HAVEN]
- [NOSPOOF]
- [FLAGS]

