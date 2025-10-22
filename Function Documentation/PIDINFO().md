# PIDINFO()
`pidinfo(<pid>[, <list of fields>[, <output separator>]])`

  This function returns information about a process id if the player has permission to see the process. The `<list of fields>` is a space-separated list that may contain the following elements:

    queue       the queue ("wait" or "semaphore") for the process
    executor    the queueing object
    time        remaining time for timed queued entries (or -1)
    object      the semaphore object for semaphores (or #-1)
    attribute   the semaphore attribute for semaphores (or #-1)
    command     the queued command

  If `<list of fields>` is not provided, all fields are returned. The fields are separated by `<output separator>`, which defaults to a space.


## See Also
- [@ps]
- [lpids()]
- [getpids()]

