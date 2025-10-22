# @wait
`@wait[/until] <time>=<command_list>`
`@wait <object>=<command_list>`
`@wait[/until] <object>/<time>=<command_list>`

The basic form of this command puts the command list (a semicolon-separated list of commands) into the wait queue to execute in `<time>` seconds. If the `/until` switch is given, the time is taken to be an absolute value in seconds, not an offset.

The second form sets up a semaphore wait on `<object>`. The enactor will execute `<command_list>` when `<object>` is @notified.

The third form combines the first two: the enactor will execute `<command_list>` when `<object>` is @notified or when `<time>` passes, whichever happens first.

More forms that support semaphores on arbitrary attributes are described in [@wait2].


## See Also
- [SEMAPHORES]
- [@drain]
- [@notify]

