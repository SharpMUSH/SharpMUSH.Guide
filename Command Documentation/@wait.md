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
# @wait2
Normally, a semaphore wait depends on the SEMAPHORE attribute of the object in question. However, it is useful to be able to use other attributes as semaphores, so one object can be used as the blocker for multiple different things at once. Possible attribute names aren't completely arbitrary. See 'HELP SEMAPHORES5' for details.

The syntax for these are:

`@wait <object>/<attribute>=<command list>`
`@wait[/until] <object>/<attribute>/<time>=<command list>`

You cannot do a non-timed semaphore on an attribute with a numeric name, as that is taken as a timeout instead.

See [@wait3].
# @wait3
`@wait/pid <pid>=<seconds>`
`@wait/pid <pid>=[+-]<adjustment>`
`@wait/pid/until <pid>=<time>`

The `/pid` switch can be used to alter the timeout of entries in the wait and semaphore queues. You can set a new wait time, increase or decrease the current time, or set a new absolute time in seconds.

You must control the object doing the wait, or have the halt @power.

