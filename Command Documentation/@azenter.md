# @azenter
`@zenter <object>[=<message>]`
`@ozenter <object>[=<message>]`
`@azenter <object>[=<action list>]`

These attributes set the message shown to a player when he enters the zone `<object>`, the message shown to others in the room the player enters when he enters the zone, and the action to be taken by the zone `<object>` when the player moves into an area zoned to it.

Entry into a new zone is said to occur when a player goes from a room not in the zone to a room in the zone. "Room" in this context means the player's absolute room (outermost container), so entering and leaving unzoned objects within a zoned room doesn't trigger these.

Zone entry is assumed to occur before room entry, so these are triggered before the room's @[oa]enter.


## See Also
- [@zleave]
- [ZONES]
- [@zemit]
- [zwho()]
- [VERBS]

