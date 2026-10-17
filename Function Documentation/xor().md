# xor()
`xor(<boolean1>[, <boolean2>, ... , <booleanN>])`

  Takes one or more booleans and returns a 1 if one, and only one, of the inputs is equivalent to true(1).

  With the `mux_logic` @config option on, xor() is TinyMUX's: each argument is tested by its leading signed integer, and the answer is 1 when an odd number of them are true, so `xor(1,1,1)` is 1. See [compatibility config].


::: seealso
- [boolean values]
- [AND()]
- [OR()]
- [NOT()]
- [NOR()]
- [LMATH()]
:::

