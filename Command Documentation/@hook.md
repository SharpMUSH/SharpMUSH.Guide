# @hook
`@hook/<switch> <command>[=<object>[, <attribute>]]`
`@hook/list [<command>]`

@hook makes the command parser evaluate given attributes at certain points in command evaluation. The possible points, indicated by the proper switch:

- @hook/ignore: The attribute is evaluated before the built-in command is run. If it returns a false value, the command is skipped (the input is still matched against softcoded commands)
- @hook/override: The object/attribute is matched for a $-command, and if it matches, it is run instead of the built-in command, but with the precedence of the built-in command (thus overriding not only the built-in command but any local $-commands that might match). If the match fails, normal built-in command processing continues. Note that all locks and flags on the object (HALT, etc.) still apply.
- @hook/override/inline: Same as `@hook/override`, but the resulting matches are run immediately - not queued for later execution!
- @hook/before: The attribute is evaluated before the built-in command is run.
- @hook/after: The attribute is evaluated after the built-in command is run.
- @hook/extend: If an invalid switch is given to the command, attempt to run a matching $-command in `<object>[/<attribute>]` instead of giving an error. Allows extending built-in commands in softcode without having to rewrite the core functionality.
- @hook/extend/inline: As above, but the $-command won't be queued.

See [@hook2].

