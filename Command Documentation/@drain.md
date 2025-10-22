# @drain
`@drain[/any][/all] <object>[/<attribute>][=<number>]`

This command discards commands waiting on a semaphore without executing them. (For non-semaphore queues, use @halt or @halt/pid.)

If the `/any` switch is given, then all semaphores associated with `<object>` are @drained. Otherwise, only the specified semaphore attribute (or SEMAPHORE if no `<attribute>` is specified) is @drained.

If the `/all` switch is given, then all queue entries associated with the selected semaphore(s) are discarded, and the semaphore attribute(s) are cleared. Otherwise, only the indicated `<number>` of queue entries are discarded. If no `<number>` is given, then the `/all` switch is assumed.

You may not specify both the `/any` switch and a specific attribute. Similarly, you may not specify both the `/all` switch and a number.


## See Also
- [SEMAPHORES]
- [@wait]
- [@notify]
- [@halt]

