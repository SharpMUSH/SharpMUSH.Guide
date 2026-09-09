# @config flags
These options set the default flags for newly-created objects and channels. Each is a
space-separated list, and setting one replaces the default rather than adding to it.

- `player_flags=<string>`: List of flags to set on newly created players. Default: `enter_ok ansi no_command`
- `room_flags=<string>`: List of flags to set on newly created rooms. Default: `no_command`
- `thing_flags=<string>`: List of flags to set on newly created things. Default: `no_command`
- `exit_flags=<string>`: List of flags to set on newly created exits. Default: none
- `channel_flags=<string>`: List of flags to set on newly created channels. Default: `player`

An object set NO_COMMAND is not checked for `$`-commands. Use `@set <object>=!NO_COMMAND` on the
ones that carry them, or drop the flag from `thing_flags` if your game puts `$`-commands on things
as a matter of course.

**See Also:**
- [NO_COMMAND]
- [@set]
- [flag list]


