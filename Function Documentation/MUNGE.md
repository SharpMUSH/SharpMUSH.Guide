# MUNGE()
`munge([<object>/]<attribute>, <list1>, <list2>[, <delimiter>[, <osep>]])`

  This function takes two lists of equal length. It passes the entirety of `<list1>` to the user-defined function as %0, and the delimiter as %1. Then, this resulting list is matched with elements in `<list 2>`, and the rearranged `<list2>` is returned.

  This is useful for doing things like sorting a list, and then returning the corresponding elements in the other list. If a resulting element from the user-defined function doesn't match an element in the original `<list1>`, a corresponding element from `<list2>` does not appear in the final result. The elements are matched using an exact, case-sensitive comparision.

  `<delimiter>` defaults to a space, and `<osep>` defaults to `<delimiter>`.

  See [munge2] for examples.

