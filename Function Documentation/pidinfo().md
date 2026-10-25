# pidinfo()
`pidinfo(<pid>[, <list of fields>[, <output separator>]])`

  This function returns information about a process id if the player has permission to see the process. The `<list of fields>` is a space-separated list that may contain the following elements:

    queue       the queue ("wait" or "semaphore") for the process<br>
    executor    the queueing object (also "player")<br>
    time        remaining time for timed queued entries (or -1)<br>
    object      the semaphore object for semaphores (or #-1)<br>
    attribute   the semaphore attribute for semaphores (or #-1)<br>
    command     the queued command

  A field may be shortened to any prefix of its name, and an unknown one is left out. If `<list of fields>` is not provided, all fields are returned. The fields are separated by `<output separator>`, which defaults to a space. A pid that is not queued returns #-1 INVALID PID.

```sharp
@wait me/SEMAPHORE=think Done
think pidinfo(lpids(me,semaphore),queue object command,|)
```
  Output: `semaphore|<your dbref>|think Done`.


::: seealso
- [@ps]
- [LPIDS()]
- [GETPIDS()]
:::

