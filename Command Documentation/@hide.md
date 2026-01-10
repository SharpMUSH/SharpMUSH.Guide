# @hide
`@hide[/<switch>] <descriptor>`
`@hide[/<switch>] [<player>]`

This command allows players to hide their online status. Hidden connections don't show up on WHO, in lwho(), etc, when used by players without see_all.

The first form of this command affects the single connection specified by `<descriptor>` (as returned by ports(), or shown on the admin WHO). The second affects all connections for the given `<player>`, or the enactor if no `<player>` is given. You must be a Wizard, Royalty, or have the Hide @power to affect your own connections; only Wizards can affect other players' connections.

The `/on` and `/yes` switches hide connections, while `/off` and `/no` unhide connections. If no switch is given, the command acts as a toggle: for a single descriptor, the hide status is reversed. For a player, if all his connections are hidden, they will be unhidden. If any are unhidden, they will all be hidden.


## See Also
- [hidden()]
- [WHO]
- [lwho()]
- [lports()]
- [ports()]

