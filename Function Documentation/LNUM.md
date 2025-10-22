# LNUM()
`lnum(<number>)`
`lnum(<start number>, <end number>[, <output separator>[, <step>]])`

  With one argument, lnum returns a list of numbers, from 0 to `<number - 1>`. For example, lnum(4) returns the list "0 1 2 3". This is useful for creating loops.

  With two arguments, the numbers range from the first to the second argument. For example, lnum(1,4) => 1 2 3 4

  With three arguments, the output is separated by the separator given in the third argument. lnum(1,4,|) => 1|2|3|4

  A fourth argument dictates the step. By default, the step is 1.
  lnum(1,10,%b,2) -> 1 3 5 7 9
  lnum(0,10,%b,2) -> 0 2 4 6 8 10


