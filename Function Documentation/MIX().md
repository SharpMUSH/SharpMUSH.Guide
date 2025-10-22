# MIX()
`mix([<object>/]<attribute>, <list1>, <list2>[, ... , <list30>, <delim>])`

  This function is similar to MAP(), except that it takes the elements of up to 30 lists, one by one, and passes them to the user-defined function as %0, %1, up to %9, respectively, for elements of `<list1>` to `<list30>`. Use v() to access elements 10 or higher. If the lists are of different sizes, the shorter ones are padded with empty elements. `<delim>` is used to separate elements; if it is not specified, it defaults to a space. If using more than 2 lists, the last argument must be a delimiter.

  See [mix2] for examples.

