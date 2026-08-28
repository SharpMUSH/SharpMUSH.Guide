# E()
# EVERY()
# SOME()
`every([<object>/]<attribute>, <list>[, <delimiter>[, <register>]])`<br>
`some([<object>/]<attribute>, <list>[, <delimiter>[, <register>]])`

  These functions evaluate `<attribute>` as a boolean predicate against each element of `<list>` (the element is passed as %0), and return 1 or 0. An element passes when the result is boolean-true, by the same rule as filterbool().

  every() returns 1 if EVERY element passes, and 0 otherwise. An empty list is vacuously true: every() returns 1.

  some() returns 1 if ANY element passes, and 0 otherwise. An empty list returns 0.

  If `<register>` is given, the q-register of that name is set to the delimiter-joined list of the elements that did NOT pass the predicate (an empty string when none failed) — the same reject-capture convention as filterq(). Without a register, evaluation short-circuits (every() stops at the first failure, some() at the first success); requesting a register evaluates the whole list so every failure is collected.

  Example — validate input and name the offenders:
```sharp
> &ISNUM me=isnum(%0)
> think [every(ISNUM, 12 apples 7 pears, , bad)]: %q<bad>
0: apples pears
```

  The same shape works as a command guard: `@assert every(ISNUM, %0, , bad)=@pemit %#=Not numbers: %q<bad>`


**See Also:**
- [filter()]
- [filterbool()]
- [filterq()]
- [setq()]
- [chain()]

