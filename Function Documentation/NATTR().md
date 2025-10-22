# NATTR()
# NATTRP()
# ATTRCNT()
# ATTRPCNT()
# REGNATTR()
# REGNATTRP()
`nattr(<object>[/<attribute pattern>])`
`nattrp(<object>[/<attribute pattern>])`
`regnattr(<object>[/<regexp>])`
`regnattrp(<object>[/<regexp>])`

  nattr() returns the number of attributes on `<object>` that you can see which match the given `<attribute pattern>`. It is considerably faster than words(lattr()) and doesn't suffer from buffer length constraints. It's designed primarily for statistical purposes. `<attribute pattern>` defaults to "*", which does not include branches in attribute trees; use "**" if you need to count attribute trees.

  regnattr() matches attribute names against the regular expression `<regexp>`.

  nattrp() and regnattrp() also count matching attributes on the parent.

  attrcnt() and attrpcnt() are aliases for nattr() and nattrp() respectively.


## See Also
- [lattr()]
- [hasattr()]
- [xattr()]
- [WILDCARDS]

