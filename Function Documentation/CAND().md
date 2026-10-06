# AND()
# CAND()
`and(<boolean1>, <boolean2>[, ... , <booleanN>])`<br>
`cand(<boolean1>, <boolean2>[, ... , <booleanN>])`

  These functions take any number of boolean values, and return 1 if all are true, and 0 otherwise. and() will always evaluate all its arguments (including side effects), while cand() stops evaluation after the first false argument.

  Prefer cand(): it skips work the answer no longer needs, and a later argument can rely on the earlier ones being true. Use and() only when every argument has a side effect that must run.


::: seealso
- [boolean values]
- [NAND()]
- [OR()]
- [XOR()]
- [NOT()]
- [LMATH()]
:::

