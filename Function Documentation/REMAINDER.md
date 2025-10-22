# REMAINDER()
`modulo(<number>, <number>[, ..., <numberN>])`
`remainder(<number>, <number>[, ..., <numberN>])`

  remainder() returns the remainder of the integer division of the first number by the second (and subsequent) number(s) (ie, the remainder from calling div() with the same arguments).

  modulo() returns the modulo of the given numbers (from calling floordiv() with the same arguments).

  For positive numbers, these are the same, but they may be different for negative numbers:

     modulo(13,4)       ==>  1      and     remainder(13,4)    ==>  1
     modulo(-13,4)      ==>  3      but     remainder(-13,4)   ==>  -1
     modulo(13,-4)      ==>  -3     but     remainder(13,-4)   ==>  1
     modulo(-13,-4)     ==>  -1     and     remainder(-13,-4)  ==>  -1

  remainder()s result always has the same sign as the first argument. modulo()s result always has the same sign as the second argument.

  mod() and modulus() are aliases for modulo().


## See Also
- [div()]
- [lmath()]

