# @config dump
These options affect database saves and other periodic checks.

- `dump_message=<string>`: Notification message for a database save.
- `dump_complete=<string>`: Notification message for the end of a save.
- `dump_warning_1min=<string>`: Notification one minute before a save.
- `dump_warning_5min=<string>`: Notification five minutes before a save.
- `warn_interval=<time>`: Seconds between automatic @wchecks.
- `purge_interval=<time>`: Seconds between automatic @purges.

A save is a backup: the messages are shown around every `@backup`, `@dump` and scheduled backup, and an empty one is not shown. How often backups are scheduled is the server's SHARPMUSH_BACKUP_INTERVAL setting, not an option, so PennMUSH's dump_interval is read and ignored; so is dbck_interval, since `@dbck` runs only when asked (see [event dump] and [event db]).


