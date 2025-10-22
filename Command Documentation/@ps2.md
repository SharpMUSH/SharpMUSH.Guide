# @ps2
With a `<pid>` argument, @ps shows information on a single queue entry. The `/debug` switch will also display the queue entry's environment: Arguments, q registers, executor, enactor and caller dbrefs.

Each line includes the process id of the queue entry, the object and attribute being used as a semaphore (if any), the number of seconds left before it executes (for waits and semaphores), the object that is going to execute the entry, and the command. To halt a specific queue entry, use `@halt/pid`.


## See Also
- [@wait]
- [@halt]
- [@notify]
- [@drain]
- [SEMAPHORES]

