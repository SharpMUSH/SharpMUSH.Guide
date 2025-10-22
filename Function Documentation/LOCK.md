# LOCK()
`lock(<object>[/<locktype>][, <new value>])`

  lock() returns the text string equivalent of the @lock on `<object>`. `<locktype>` can be any valid switch for @lock ("Enter", "user:foo", etc) and defaults to "Basic". You must be able to examine the lock.

  If a `<new value>` is given, lock() attempts to change the lock as @lock would first. You must control the object.


## See Also
- [@lock]
- [locktypes]
- [elock()]
- [lockflags()]
- [llockflags()]
- [lset()]
- [llocks()]
- [lockowner()]
- [lockfilter()]

