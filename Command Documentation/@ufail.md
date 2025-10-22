# @ufail
`@ufail <object>=[<message>]`
`@oufail <object>=[<message>]`
`@aufail <object>=[<action list>]`

Sets the message shown to a player who fails to use an object via the 'use' command (because they don't pass the @lock/use), the message shown to others in the room when a player fails to use `<object>`, and the actions to be taken by `<object>` when someone fails to use it, respectively.

Note that these attributes are @ufail, NOT @ufailure, for TinyMUSH compatibility.

Although the Use @lock also restricts who can trigger $-commands or ^-listens on an object, these attributes will not be triggered for those failures. Instead, the COMMAND_LOCK`* and LISTEN_LOCK`* attributes are triggered. See [failure] for more information.


## See Also
- [use]
- [@use]
- [FAILURE]
- [ACTION LISTS]
- [VERBS]

