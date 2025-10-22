# @config dump
These options affect database saves and other periodic checks.

- `forking_dump=<boolean>`: Does the game clone itself and save in the copy, or just pause while the save happens?
- `dump_message=<string>`: Notification message for a database save.
- `dump_complete=<string>`: Notification message for the end of a save.
- `dump_warning_1min=<string>`: Notification one minute before a save.
- `dump_warning_5min=<string>`: Notification five minutes before a save.
- `dump_interval=<time>`: Seconds between database saves.
- `warn_interval=<time>`: Seconds between automatic @wchecks.
- `purge_interval=<time>`: Seconds between automatic @purges.
- `dbck_interval=<time>`: Seconds between automatic @dbcks.


