# @motd
# @listmotd
# @wizmotd
# @rejectmotd
`@motd[/<type>] <message>`
`@motd/clear[/<type>]`
`@motd/list`

This command is used for manipulating the various Messages of the Day, or MotD. The first form of this command sets the `<type>` MotD to `<message>`, the second form clears the `<type>` MotD, and the third form lists the current value of each MotD. If no switch is given, `<type>` defaults to /connect.

These messages are intended for temporary announcements; the given `<message>` is shown in addition to the standard MotDs defined in the mush.cnf options. MotDs set via this command are cleared when the MUSH restarts.

| Valid `<type>` | shown with.. | and is seen by... |
| --- | --- | --- |
| /connect | motd_file | all players on connect |
| /wizard | wizmotd_file | connecting Wizards and Royalty |
| /full | full_file | players failing to connect because all available connections are in use |
| /down | down_file | mortals failing to connect when logins are disabled |

You must have the Announce @power to change the Connect MotD; only wizards and royalty can see or alter the others.

For historical reasons, @listmotd, @wizmotd and @rejectmotd are aliases for `@motd/list`, `@motd/wizard` and `@motd/full`, respectively.

