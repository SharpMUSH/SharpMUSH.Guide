# LPIDS()
`lpids([<object>[, <queue types>]])`

  This function returns a list of queue process ids (pids). Only commands queued by objects with the same owner as `<object>` are listed. If you have the see_queue @power, you can specify "all" for `<object>` to get pids for everyone's queue entries. `<object>` defaults to the caller, or "all" for priviledged callers.

  `<queue types>` should be a list of one or more of the following words, to filter the pids returned:
    wait        --  Only return wait queues
    semaphore   --  Only return semaphore queues
    independent --  Only return commands queued by `<object>` specifically, instead of all objects with the same owner as `<object>`.
  If not specified, it defaults to "wait semaphore".


## See Also
- [@ps]
- [getpids()]
- [pidinfo()]

