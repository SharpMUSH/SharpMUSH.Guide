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

