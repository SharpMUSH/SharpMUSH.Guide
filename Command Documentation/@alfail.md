# @alfail
`@lfail <object>[=<message>]`
`@olfail <object>[=<message>]`
`@alfail <object>[=<action list>]`

These attributes contain the message shown to objects who try to leave `<object>` and fail, the message shown to others inside `<object>` when someone fails to leave, and the actions to be taken by `<object>` when someone attempts to leave it and fails.

Such a failure usually occurs because `<object>` is set NO_LEAVE, or because the person trying to leave does not pass `<object>`'s @lock/leave.


## See Also
- [leave]
- [@leave]
- [NO_LEAVE]
- [locktypes]
- [ACTION LISTS]
- [VERBS]

