# LMATH()
`lmath(<op>, <list>[, <delim>])`

  This function performs generic math operations on `<list>`, returning the result. Each element of the list is treated as one argument to an operation, so that lmath(`<op>`, 1 2 3) is equivalent to `<op>`(1, 2, 3). Using @function, one can easily write ladd, lsub, etc as per TinyMUSH.

  Supported `<op>`'s are:
  add and band bor bxor dist2d dist3d div eq fdiv gt gte lt lte max mean median min modulo mul nand neq nor or remainder stddev sub xor

  Examples:
```
think lmath(add, 1|2|3, |)
6
```

    > think lmath(max, 1 2 3)
    3

    > &FUN_FACTORIAL me=lmath(mul,lnum(1,%0))
    > think u(fun_factorial,5)
    120

