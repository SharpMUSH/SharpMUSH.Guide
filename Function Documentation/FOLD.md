# FOLD()
`fold([<obj>/]<attr>, <list>[, <base case>[, <delimiter>]])`

  This function "folds" a list through the user-defined function, set in the specified `<obj>`/`<attribute>`.

  If no `<base case>` is provided, fold() passes the first element of `<list>` as %0, and the second element of `<list>` as %1, to the user-defined function. The user-defined function is then called again, with the result of the first evaluation being %0, and the next (third) element of the list as %1. This is repeated until all the elements of the list have been used. The result of the last call of `<obj>`/`<attr>` is returned.

  If a base case is provided, it is passed as %0, and the first element of list is passed as %1, to the user-defined function. The process for the no-base-case fold() is then used.

  The number of times `<attr>` has been called is passed as %2, starting from 0.

  Note that it's not possible to pass a `<delimiter>` to fold without also giving a `<base case>`; see the examples for a way around this.

  See [fold2] for examples.

