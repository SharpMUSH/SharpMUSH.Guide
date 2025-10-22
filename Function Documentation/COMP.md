# COMP()
`comp(<value1>, <value2>[, <type>])`

  comp() compares two values. It returns 0 if they are the same, -1 if `<value1>` is less than/precedes alphabetically `<value2>`, and 1 otherwise.

  By default the comparison is a case-sensitive lexicographic (string) comparison. By giving the optional `<type>`, the comparison can be specified:

      `<type>`            Comparison
        A               Maybe case-sensitive lexicographic (default)
        I               Always case-insensitive lexicographic
        D               Dbrefs of valid objects
        N               Integers
        F               Floating point numbers

  Whether or not the a sort type is case-sensitive or not depends on the particular MUSH and its environment.

## See Also
- [strmatch()]
- [eq()]

