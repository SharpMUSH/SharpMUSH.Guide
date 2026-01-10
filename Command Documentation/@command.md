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
# @command2
`@command/add` is a powerful tool that lets you create new commands which are matched before normal $-commands, and which can be set not to parse their arguments, but (via @hook) can still execute softcode like an $-command.

You can use these additional switches, along with `@command/add`, to control how the new command parses its arguments:

- /noparse : The command does not evaluate the leftside arg(s).
- /eqsplit : The parser parses leftside and rightside around =
- /lsargs : Comma-separated arguments on the left side are parsed.
- /rsargs : When used with /eqsplit, the right-side arguments are comma-separated and are parsed individually
- /rsnoparse : The command does not evaluate the rightside arg(s).

Any command added with neither `/noparse` or `/rsnoparse` is provided with a `/noeval` switch automatically, so if you `@command/add` foo, then foo's arguments are parsed by default, but you can call foo/noeval. Note: when you @hook/override foo, its $-command pattern must be able to match "foo/noeval" as well for the switch to actually be used.

Commands added with `@command/add`, like other standard commands, are always case-insensitive. Commands can also be added in the alias.cnf file.

See [@command3] for examples.

## See Also
- [@hook]
- [RESTRICT]
- [EVALUATION ORDER]
# @command3
Examples:
```
> @create Dining Machine
> &eat dining=$eat *:@remit %L=%n takes a bite of %0.
> @command/add/noparse eat
> @hook/override eat=dining machine,eat
> eat meat loaf
Walker takes a bite of meat loaf.
> eat randword(apple tomato pear)
Walker takes a bite of randword(apple tomato pear)
```

```
> &drink dining=$^drink(/noeval)? (.*)$:@remit %L=%n drinks %2.
> @set dining/drink=regexp
> @command/add drink
> @hook/override drink=dining machine,drink
> drink reverse(tea)
Walker drinks aet.
> drink/noeval reverse(tea)
Walker drinks reverse(tea).
```

