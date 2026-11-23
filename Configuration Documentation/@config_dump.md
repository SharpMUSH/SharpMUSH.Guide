# @config dump
These options affect database saves and other periodic checks.

- `dump_message=<string>`: Shown when a backup of the world starts.
- `dump_complete=<string>`: Shown when a backup of the world is written.
- `dump_warning_1min=<string>`: Shown one minute before a scheduled backup.
- `dump_warning_5min=<string>`: Shown five minutes before a scheduled backup.

These four go to connected wizards and royalty only. An empty one shows nothing.
- `warn_interval=<time>`: Seconds between automatic @wchecks.
- `purge_interval=<time>`: Seconds between automatic @purges.
- `recover_keep_players=<time>`: How long a destroyed character stays on the recover list: `forever`, or a time such as `90d`. Default: `forever`
- `recover_keep_objects=<time>`: How long any other destroyed object stays on the recover list. Default: `30d`

A save is a backup: the messages are shown around every `@backup`, `@dump` and scheduled backup, and an empty one is not shown. How often backups are scheduled is the server's SHARPMUSH_BACKUP_INTERVAL setting, not an option, so PennMUSH's dump_interval is read and ignored; so is dbck_interval, since `@dbck` runs only when asked (see [event dump] and [event db]).


