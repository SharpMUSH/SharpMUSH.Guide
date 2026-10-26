# v()
# v-function
`v(<variable>)`<br>
`v(<integer>)`<br>
`v(<attribute>)`

  The first form of this function returns the value of the `<variable>` %-sub. In most cases, using the %-sub is preferable. Not all %-subs are accessible this way; only the following `<variable>`s are valid:

    0-9, #, @, !, n, l, and c.

  Unlike %-subs, the v() function is not case-sensitive: v(n) and v(N) are both equivalent to %n (whereas %N is equivalent to `[capstr(%n)]`).

  v() can also return the value of stack registers %0 through %9: v(0) is equivalent to %0. A number of two or more digits, such as v(10), is treated as an attribute name; use %`<10>` or r(10,args) for argument 10 and higher.

  The final form of this function is equivalent to get(me/`<attribute>`), but is usually slightly more efficient.


::: seealso
- [STACK]
- [registers]
- [%]
- [GET()]
- [R()]
- [attributes]
:::

