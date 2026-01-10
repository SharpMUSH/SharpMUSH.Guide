# @atport
# @tport
# @otport
# @oxtport
`@tport <object>[=<message>]`
`@otport <object>[=<message>]`
`@oxtport <object> [=<message>]`
`@atport <object>[=<action list>]`

These attributes contain the message shown to `<object>` when it is teleported, the message shown to others in the room `<object>` is teleported to, the message shown to others in the room `<object>` is teleported from, and the actions to be taken by `<object>` when it disappears, respectively.

In all of these attributes, %0 is the object which teleported `<object>`, and %1 is `<object>`'s old location.

Example:
```
> @tport me=name(%0) has teleported you from [name(%1)] to [name(here)].
> @otport me=appears in a puff of smoke.
> @oxtport me=disappears in a puff of smoke.
```


## See Also
- [@teleport]
- [ACTION LISTS]
- [VERBS]

