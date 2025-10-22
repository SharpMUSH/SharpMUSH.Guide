# AND()
# CAND()
`and(<boolean1>, <boolean2>[, ... , <booleanN>])`
`cand(<boolean1>, <boolean2>[, ... , <booleanN>])`

  These functions take any number of boolean values, and return 1 if all are true, and 0 otherwise. and() will always evaluate all its arguments (including side effects), while cand() stops evaluation after the first false argument.


## See Also
- [BOOLEAN VALUES]
- [nand()]
- [or()]
- [xor()]
- [not()]
- [lmath()]

