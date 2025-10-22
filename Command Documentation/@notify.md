# @notify
`@notify[/any][/all] <object>[/<attribute>][=<number>]`
`@notify/setq <object>[/<attribute>]=<qreg1>,<qval1>[,...]`

This command notifies a semaphore, allowing commands queued for that semaphore to be executed.

If the `/any` switch is given, then all semaphores associated with `<object>` are @notified. Otherwise, only the specified semaphore `<attribute>` (or SEMAPHORE if no attribute is specified) is @notified.

If the `/all` switch is given, then all queue entries associated with the selected semaphore(s) are executed. Otherwise, only the first `<number>` of queue entries are run. If no `<number>` is given, then only one queue entry is run.

If the `/all` switch was not used, and there were not enough queue entries waiting to satisfy the requested `<number>`, then the semaphore becomes negative, and subsequent @waits will not block until it reaches 0 again.

You may not specify both the `/any` switch and a specific attribute. Similarly, you may not specify both the `/all` switch and a number.

See [@notify2].

