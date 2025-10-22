# @name
`@name <object>=<new name>`
`@name <player|exit>=<new name>[;<alias1>[;<aliasN>]]`

Changes the name of `<object>` to `<new name>`.

Players can change their name to anything valid which is not currently in use by another player, as a name or alias. (They can change their name to something from their own @alias.)

You can change the alias for a player or exit while renaming it, by giving the alias(es) after the new name, each separated by a semicolon. If the name is followed by a semicolon with no aliases, the existing alias will be cleared instead.

When `<object>`'s name is changed, its ONAME and ANAME verb attributes will be triggered. See [@oname] for details.

Examples:
```
> @name here=My Room
Name set.
> @name me=Mike;Michael;m
Alias set.
Name set.
> @name me=Obi Wan;
Alias removed.
Name set.
```


## See Also
- [@alias]
- [@oname]
- [name()]
- [fullname()]
Config options: player_name_spaces, player_name_len, only_ascii_in_names

