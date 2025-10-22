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

# @config limits2
Limits and constants, continued.

- `whisper_loudness=<number>`: The percentage chance of a whisper/noisy being heard.
- `starting_quota=<number>`: How much quota new players get.
- `starting_money=<number>`: How many pennies new players get.
- `paycheck=<number>`: How many pennies players get each day they log on.
- `max_pennies=<number>`: The maximum pennies an object can have.
- `mail_limit=<number>`: How many @mail messages someone can have.
- `max_depth=<number>`: How deep indirect @lock chains can go.
- `player_queue_limit=<number>`: The number of commands a player can have queued at once.
- `queue_loss=<number>`: One in <number> times, queuing a command will cost an extra penny that doesn't get refunded.
- `queue_chunk=<number>`: How many queued commands get executed in a row before checking for network activity.

See [@config limits3]

# @config limits3
Limits and constants, continued.

- `function_recursion_limit=<number>`: The depth to which softcode functions can call more functions.
- `function_invocation_limit=<number>`: The maximum number of softcode functions that can be called in one command.
- `guest_paycheck=<number>`: How many pennies guests get each day.
- `max_guest_pennies=<number>`: The maximum pennies a guest can have.
- `player_name_len=<number>`: The maximum length of a player name.
- `queue_entry_cpu_time=<number>`: The maximum number of milliseconds a queue entry can take to run.
- `use_quota=<boolean>`: Controls if quotas are used to limit the number of objects a player can own.

See [@config limits4]

# @config limits4
Limits and constants, continued.

- `max_aliases=<number>`: The maximum number of aliases a player can have.
- `keepalive_timeout=<time>`: How often should an 'Are you still there?' query be sent to clients, to stop players' routers booting idle connections?
- `max_parents=<number>`: The maximum number of levels of parenting allowed.
- `call_limit=<number>`: The maximum number of times the parser can be called recursively for any one expression.
- `chunk_migrate=<number>`: Maximum number of attributes that can be moved to disk cache per second.


