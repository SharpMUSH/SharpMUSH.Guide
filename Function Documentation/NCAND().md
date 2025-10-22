# NCAND()
`nand(<boolean1>[, ... , <booleanN>])`
`ncand(<boolean1>[, ... , <booleanN>])`

  These functions return 1 if at least one of their arguments are false, and 0 if all are true. nand() always evaluates all of its arguments, while ncand() stops evaluating after the first false value.

  Equivalent to not(and()) and not(cand()), but more efficient.


## See Also
- [lmath()]
- [and()]
- [cand()]
- [or()]
- [nor()]

