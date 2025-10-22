# FDIV()
`div(<number1>, <number2>[, ... , <numberN>])`
`fdiv(<number1>, <number2>[, ... , <numberN>])`
`floordiv(<number1>, <number2>[, ... , <numberN>])`

  These functions divide `<number1>` by `<number2>` (and, for each subsequent argument, divide the previous result by `<numberN>`) and return the final result.

  div() returns the integer part of the quotient. floordiv() returns the largest integer less than or equal to the quotient; for positive numbers, they are identical, but for negative numbers they may differ. fdiv() returns the floating-point quotient.

  Examples:
```
   div(13,4)          ==>   3      and     floordiv(13,4)     ==>   3
   div(-13,4)         ==>  -3      but     floordiv(-13,4)    ==>  -4
   div(13,-4)         ==>  -3      but     floordiv(13,-4)    ==>  -4
   div(-13,-4)        ==>   3      and     floordiv(-13,-4)   ==>   3

   fdiv(13,4)         ==>  3.25            fdiv(-13,4)        ==> -3.25
   fdiv(13,-4)        ==>  -3.25           fdiv(-13,-4)       ==>  3.25
```

  Note that add(mul(div(%0,%1),%1),remainder(%0,%1)) always yields %0, and add(mul(floordiv(%0,%1),%1),modulo(%0,%1)) also always yields %0.


## See Also
- [modulo()]
- [lmath()]

