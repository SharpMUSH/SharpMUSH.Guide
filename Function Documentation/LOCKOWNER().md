# LOCKOWNER()
`lockowner(<object>[/<locktype>])`

  This function returns the dbref of the executor who set the `<locktype>` lock on `<object>`, or the Basic lock if no `<locktype>` is given. You must be able to examine the lock. Legacy locks with an unknown creator return `#-1`; absent or inaccessible locks return `#-1 NO SUCH LOCK`.


**See Also:**
- [lockflags()]
- [llockflags()]
- [lset()]
- [lock()]
- [llocks()]

