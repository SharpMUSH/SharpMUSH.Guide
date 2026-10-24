# or()
# cor()
`or(<boolean1>[, <boolean2>, ... , <booleanN>])`<br>
`cor(<boolean1>[, <boolean2>, ... , <booleanN>])`

  These functions take a number of boolean values, and return 1 if any of them are true, and 0 if all are false. or() always evaluates all of its arguments, while cor() stops evaluating as soon as one is true.

  Prefer cor(): it skips work the answer no longer needs. Use or() only when every argument has a side effect that must run.

  As in TinyMUX, a single argument is tested on its own: `or(0)` is 0. With the `mux_logic` @config option on, each argument is tested by its leading signed integer, as TinyMUX does, so `or(0,abc)` is 0. See [compatibility config].


::: seealso
- [boolean values]
- [AND()]
- [NOR()]
- [FIRSTOF()]
- [ALLOF()]
- [LMATH()]
:::

