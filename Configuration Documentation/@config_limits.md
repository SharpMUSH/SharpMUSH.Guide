# @config limits
Limits and other constants.

- `max_dbref=<dbref>`: The highest dbref an object can have. If 0, there is no limit on database size.
- `max_attrs_per_obj=<number>`: The maximum attributes an object can have.
- `max_logins=<number>`: The maximum number of connected players.
- `max_guests=<number>`: The maximum number of connected guests. If 0, no limit. If -1, limited by the number of guest players in the db.
- `max_named_qregs=<number>`: The maximum number of qregs except for a-z and 0-9. The limit is per-localize()-call.
- `connect_fail_limit=<count>`: The maximum number of times in a 10 minute period that an IP can attempt to log in and fail. Maximum is 50, 0 means no limit.
- `idle_timeout=<time>`: The number of minutes a connection can be idle before getting booted. 0 means no limit.
- `unconnected_idle_timeout=<time>`: The number of minutes a connection can be sitting at the login screen before getting booted. 0 means no limit.

See [@config limits2]


