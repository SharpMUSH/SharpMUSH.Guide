# NAMEGRAB()
# NAMEGRABALL()
`namegrab(<dbref list>, <name>)`
`namegraball(<dbref list>, <name>)`

  The namegrab() function returns the first dbref in the list that would match `<name>` as if you were checking num() or locate(). An exact match has priority over partial matches.

  namegraball() returns all dbrefs whose names would be matched by `<name>`.

  Examples: #0 = Room Zero, #1 = One, #2 = Master Room
    > say namegrab(#0 #1 #2,room)
    You say, "#0"
    > say namegrab(#0 #1 #2,master room)
    You say, "#2"
    > say namegraball(#0 #1 #2,room)
    You say, "#0 #2"


## See Also
- [namelist()]
- [locate()]

