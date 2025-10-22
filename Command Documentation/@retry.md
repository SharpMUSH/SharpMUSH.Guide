# @retry
`@retry <boolean>`
`@retry <boolean>=<arg0>[,...[,<argN>]]`

The @retry command restarts the current queue entry, enabling people to loop their command without requiring a wait for the next queue entry. It can be a little tricky to understand at first. It basically tells the parser: "If `<boolean>` is true, then go back to the beginning." It can also replace %0-%9 with the arguments passed to it. (`<arg0>`,...).

Please note: @retry only restarts the action list it is currently in. If you have: "`@break 1=@retry 1=hello`", then the action list is only "`@retry 1=hello`" - which would thus create an infinite loop.

Watch out for infinite loops! @retry does respect all the limits (cpu_limit, function_invocation_limit, etc). But because @retry causes the queue parser to repeat itself _without_ invoking a new function, it doesn't risk hitting any issues other than infinite loops.

See [@retry2] for examples.


## See Also
- [ACTION LISTS]
- [BOOLEAN VALUES]
- [@break]
- [@include]

