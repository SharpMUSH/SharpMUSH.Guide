# @zleave
# @ozleave
# @azleave
`@zleave <object>[=<message>]`
`@ozleave <object>[=<message>]`
`@azleave <object>[=<action list>]`

These attributes set the message shown to a player when he leaves the zone `<object>`, the message shown to others in the room he left when leaving the zone, and the actions to be taken by `<object>` with a player leaves an area zoned to it.

Leaving a zone is said to occur when a player goes from a room in the zone to a room not in the zone. "Room" in this context means the player's absolute room (outermost container), so entering and leaving unzoned objects within a zoned room doesn't trigger these.

Zone leaving is assumed to occur after room leaving, so these are triggered after the room's @[oa]leave.


## See Also
- [@zenter]
- [ZONES]
- [@zemit]
- [zwho()]
- [VERBS]

