# NAND()
# NCAND()
# CNAND()
`nand(<boolean1>[, ... , <booleanN>])`<br>
`ncand(<boolean1>[, ... , <booleanN>])`<br>
`cnand(<boolean1>[, ... , <booleanN>])`

  These functions return 1 if at least one of their arguments are false, and 0 if all are true. nand() always evaluates all of its arguments, while ncand() stops evaluating after the first false value. cnand() is a SharpMUSH spelling of ncand(), for code written against servers that name the cancelling form that way; PennMUSH has no cnand().

  Equivalent to not(and()) and not(cand()), but more efficient.


**See Also:**
- [lmath()]
- [and()]
- [cand()]
- [or()]
- [nor()]

