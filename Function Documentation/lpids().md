# lpids()
`lpids([<object>[, <queue types>]])`

  This function returns a list of queue process ids (pids). Only commands queued by objects with the same owner as `<object>` are listed. If you are a Wizard or Royalty or have the See_Queue power, you can specify "all" for `<object>` to get pids for everyone's queue entries. `<object>` defaults to the caller, or "all" for those privileged callers. Otherwise you must own or control `<object>`.

  `<queue types>` should be a list of one or more of the following words, to filter the pids returned:<br>
    wait        --  Only return wait queues<br>
    semaphore   --  Only return semaphore queues<br>
    independent --  Only return commands queued by `<object>` specifically, instead of all objects with the same owner as `<object>`.<br>
  If not specified, it defaults to "wait semaphore". Wait queue pids come first, soonest first, then semaphore pids. Any other word returns #-1 INVALID ARGUMENT.


::: seealso
- [@ps]
- [GETPIDS()]
- [PIDINFO()]
:::

