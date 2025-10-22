# LLOCKFLAGS()
`llockflags(<object>[/<locktype>])`
`llockflags()`

  If an `<object>` is given, llockflags() returns a space-separated list of the lock flags on `<object>`'s `<locktype>` lock, or Basic lock if no locktype is given. You must be able to examine the lock.

  Given no arguments, this function returns a space-separated list of all the names of all lock flags known to the server.


## See Also
- [lockflags()]
- [lset()]
- [lock()]
- [llocks()]
- [lockowner()]

