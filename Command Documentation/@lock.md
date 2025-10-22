# LOCKING
# LOCKS
# @lock
`@lock[/<switch>] <object>=<key>`

This command "locks" the object, specifying a key which determines who or what can do certain things with the object. There are many different types of locks, all of which are described in [locktypes] and which are designated by the switch. The "basic" lock determines, for players and things, who can pick them up. For exits, it determines who can go through the exit. All other locks can be set the same way as the basic lock.

Whenever you "pass" the basic lock, you succeed in doing something with the object. This triggers the @success/@osuccess/@asuccess messages and actions. If you fail to pass the basic lock, you trigger the @failure/@ofailure/@afailure messages and actions. Other locktypes may also have such success/failure messages: see [failure] for info.

Just like attributes, locks can be inherited from parents. By default, locks are set no_inherit, but this flag can be cleared using @lset. More details and a list of flags can be found in [@lset].

A listing of lock types, such as pagelocks, look at [locktypes]. For the available key types, such as how to check an attribute on an object trying to pass a lock, see [lockkeys].


## See Also
- [@lock-simple]
- [locktypes]
- [lockkeys]
- [@clock]
- [failure]
- [success]
- [elock()]
- [lock()]
- [@lset]
- [@clock]
- [testlock()]
- [locks()]
- [lockflags()]
- [lockowner()]
- [clock()]
- [llocks()]

