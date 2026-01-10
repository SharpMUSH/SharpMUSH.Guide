# LOCKFLAGS()
`lockflags(<object>[/<locktype>])`
`lockflags()`

  If an `<object>` is given, lockflags() returns a string consisting of the one-character abbreviations for all the lock flags on `<object>`'s `<locktype>` lock, or Basic lock if no locktype is given. You must be able to examine the lock.

  Given no arguments, this function returns a string consisting of all the flag letters the server knows.


## See Also
- [llockflags()]
- [lset()]
- [lock()]
- [llocks()]
- [lockowner()]

