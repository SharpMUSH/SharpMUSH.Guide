# with
`with[/room][/noeval] <obj>=<command>`

Attempts to run a user-defined command on a specific object. If the `/room` switch is given, `<obj>` must be a room or your current location, and its contents are checked for commands as if it was a master room. With `/noeval`, `<obj>` and `<command>` are used as typed, without being evaluated.

`with` outputs what the command it ran output. See [command output].

`<obj>` must be an object near you, an object you control, your ZMO or (if the `/room` switch is given) the Master Room.


::: seealso
- [$-commands]
- [evaluation order]
:::

