# V-FUNCTION
`v(<variable>)`
`v(<integer>)`
`v(<attribute>)`

  The first form of this function returns the value of the `<variable>` %-sub. In most cases, using the %-sub is preferable. Not all %-subs are accessible this way; only the following `<variable>`s are valid:

    0-9, #, @, !, n, l, and c.

  Unlike %-subs, the v() function is not case-sensitive: v(n) and v(N) are both equivilent to %n (whereas %N is equivilent to [capstr(%n)]).

  v() can also return the value of stack registers. v(0) is equivilent to %0, but v() can return up to 30 registers (v(0) through v(29)). Calling v() with an integer arg that is not between 0 and 29 (inclusive) will return an out-of-range error.

  The final form of this function is equivilent to get(me/`<attribute>`), but is usually slightly more efficient.


## See Also
- [STACK]
- [REGISTERS]
- [SUBSTITUTIONS]
- [get()]
- [r()]
- [ATTRIBUTES]

