# ELEMENT()
# MATCH()
# MATCHALL()
`match(<list>, <pattern>[, <delimiter>])`
`matchall(<list>, <pattern>[, <delimiter>[, <output separator>]])`

  match() returns the index of the first element of `<list>` which matches the wildcard pattern `<pattern>`. The first word has an index of 1. If no matches are found, 0 is returned. element() is an alias for match().

  matchall() is similar, but returns the indexes of all matching elements. If no elements match, an empty string is returned.

  In both cases, elements of `<list>` are separated by `<delimiter>`, if it's given, or a space otherwise. The results of matchall() are separated by `<ouput separator>`, if given, and `<delimiter>` if not.

  To get the matching elements, instead of the indexes of where they appear in the list, use grab()/graball(). To see if a single string matches a wildcard pattern, use strmatch().

  See [match2] for examples.

## See Also
- [grab()]
- [strmatch()]
- [member()]
- [reglmatch()]
- [WILDCARDS]

