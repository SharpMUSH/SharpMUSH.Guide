# @sitelock
`@sitelock`
`@sitelock/name <name>`
`@sitelock[/player] <host-pattern>=<options>[, <name>]`
`@sitelock[/<ban|register>][/player] <host-pattern>`
`@sitelock/check <host>`
`@sitelock/remove[/player] <string>`

The @sitelock command adds rules to the access.cnf file, controlling a host's level of access to the MUSH, or adds banned player names to the names.cnf file. Only Wizards may use @sitelock.

@sitelock without arguments lists all sites in access.cnf. Rules are processed in the order listed, and the first matching rule is applied. `@sitelock/check` tells you which rule will match for a given `<host>`.

`@sitelock/name` adds a name to the list of banned player names. Use !`<name>` to remove a name from the list.

`@sitelock <host-pattern>=<options>[, <name>]` controls the access options for hosts which match `<host-pattern>`, which may include wildcard characters "*" and "?". See help @sitelock2 for the list of options, and help @sitelock3 for an explanation about the name argument.

For backward compatibility, `@sitelock/ban` is shorthand for setting options "!connect !create !guest", and `@sitelock/register` is shorthand for options "!create register".

If the `/player` switch is given, `<host-pattern>` is treated as a player name, and sitelock rules are added for that player's LASTIP and LASTSITE, if set.

See [@sitelock2].

## See Also
- [WILDCARDS]
- [REGEXPS]
- [ipaddr()]
- [hostname()]

