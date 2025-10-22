# LLOCKS()
# LOCKS()
`llocks([<object>])`
`locks(<object>)`

`llocks() and locks() both list @locks set on <object>, including user-defined locks (prefixed with USER:)`

  If no object is given, llocks() returns all the predefined lock types available.

  Example:
```
@lock me==me
@lock/use me==me
@lock/user:itsme me==me
th llocks(me)
Basic USER:ITSME Use
```


## See Also
- [lock()]
- [lset()]
- [lockflags()]
- [llockflags()]
- [lockowner()]

