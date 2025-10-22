# @config parameters
Many of the mush's run-time options can be set from the game by wizards, using `@config/set <option>=<new value>`. Those that can be set with visible changes are listed below, grouped by category. See [@config <category>] for details on each.

Categories:
- Attribs
- Chat
- Cmds
- Cosmetic
- Costs
- Db
- Dump
- Flags
- Funcs
- Limits
- Log
- Net
- Tiny

The categories and groups are the same as those used by `@config/list`. Values must be of the listed type for each option. They include: *<number>*, *<dbref>*, *<boolean>* (Yes/No), *<time>*, or *<string>*.

Options which take a *<time>* will accept either a number of seconds or a combination of numbers followed by 's' for seconds, 'm' for minutes or 'h' for hours, making `1h30m` and `5400` equivalent.

*<dbref>* options can be given with or without the leading '#', so '1' and '#1' are the same.


