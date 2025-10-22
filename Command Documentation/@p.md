# @ps
`@ps[/<switch>] [<player>]`
`@ps[/debug] <pid>`

@ps lists all commands currently on your 'to be executed' queue, thus allowing you to identify infinite (or unnecessary) loops with-out putting in says or poses. It gives a count of the total commands in each of the queues (Command, Wait, and Semaphore), displayed in the format:
`<Number of your queued commands> / <Total number of queued commands>`.

Some of the queues also include a [Ndel] after the total. That number is the number of entries made by objects that have been halted but haven't been removed from the queue yet.

It also shows a running load average of the number of queue entries executed per second for the last 1, 5 and 15 minutes.

@ps with no arguments will show you your own queue. Wizards may specify the `/all` switch, and see the full queue. They may also specify a player. `@ps/summary` just displays the queue totals for the whole queue. `@ps/quick` displays the queue totals for just your queue.

See [@ps2].
# @ps2
With a `<pid>` argument, @ps shows information on a single queue entry. The `/debug` switch will also display the queue entry's environment: Arguments, q registers, executor, enactor and caller dbrefs.

Each line includes the process id of the queue entry, the object and attribute being used as a semaphore (if any), the number of seconds left before it executes (for waits and semaphores), the object that is going to execute the entry, and the command. To halt a specific queue entry, use `@halt/pid`.


## See Also
- [@wait]
- [@halt]
- [@notify]
- [@drain]
- [SEMAPHORES]

