# @lset
`@lset <object>/<lock type>=[!]<flag>`

This commands sets or clears flags on locks.
Valid flags include:

- visual (v) This lock can be seen even if the object it's on isn't visual.
- no_inherit (i) This lock isn't inherited off of parents. All locks are set no_inherit by default.
- no_clone (c) This lock isn't copied by @clone.
- wizard (w) This lock can only be set by wizards.
- locked (+) This lock can only be set by the owner of the lock.


## See Also
- [@lock]
- [lockflags()]
- [llockflags()]
- [lset()]

