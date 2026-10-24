# getpids()
`getpids(<object>[/<attribute>])`

  Returns a space-separated list of semaphore queue process ids waiting on the given `<object>` and semaphore `<attribute>`. If `<attribute>` is not given, pids for all semaphores on the object are returned. You must control `<object>`, unless you are a Wizard or Royalty or have the See_Queue power.


::: seealso
- [@ps]
- [@wait]
- [LPIDS()]
- [PIDINFO()]
- [semaphores]
:::

