# @command
`@command <command>`
`@command/<switch> <command>`
`@command/alias <command>=<alias>`
`@command/clone <command>=<clone>`
`@command/restrict <command>=<restriction> [" <error message>]`

@command can be used for adding new built-in commands, altering the way a built-in command works, and displaying information about how commands currently work.

With no switches, @command shows all sorts of interesting information about how a command is parsed. Any player can use @command with no switch, while the switches are Wizard-only.

The `/alias` switch creates an alias for `<command>`, allowing players to type `<alias>` to run `<command>`. The `/clone` switch creates a separate copy of `<command>`, which works the same initially but can be restricted, @hooked, etc, separately.

`@command/restrict` can be used to restrict who can use `<command>`. See [restrict] for more information.

Switches include:
- /add : Add a new command that does nothing, but can be @hook'd.
- /delete : Delete a command added with @command/add or /alias. God only.
- /disable : Disable a command added in the hardcode.
- /enable : Re-enable a command disabled with @command/disable.

The `/quiet` switch can be used to suppress output from @command.

See [@command2].

