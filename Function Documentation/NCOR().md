# NOR()
# NCOR()
`nor(<boolean1>[, ... , <booleanN>])`
`ncor(<boolean1>[, ... , <booleanN>])`

  These functions return 1 if all their arguments are false, and 0 if any are true. nor() always evaluates all arguments, while ncor() stops evaluating after the first true value.

  Equivalent to not(or()) and not(cor()), but more efficient.


## See Also
- [and()]
- [or()]
- [xor()]
- [not()]
- [nand()]
- [lmath()]

