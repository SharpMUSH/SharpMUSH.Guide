# OR()
# COR()
`or(<boolean1>, <boolean2>[, ... , <booleanN>])`<br>
`cor(<boolean1>, <boolean2>[, ... , <booleanN>])`

  These functions take a number of boolean values, and return 1 if any of them are true, and 0 if all are false. or() always evaluates all of its arguments, while cor() stops evaluating as soon as one is true.

  Prefer cor(): it skips work the answer no longer needs. Use or() only when every argument has a side effect that must run.


::: seealso
- [boolean values]
- [AND()]
- [NOR()]
- [FIRSTOF()]
- [ALLOF()]
- [LMATH()]
:::

