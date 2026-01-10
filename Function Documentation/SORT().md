# SORT()
`sort(<list>[, <sort type>[, <delimiter>[, <osep>]]])`

  This sorts a list of words. If no second argument is given, it will try to detect the type of sort it should do. If all the words are numbers, it will sort them in order of smallest to largest. If all the words are dbrefs, it will sort them in order of smallest to largest. Otherwise, it will perform a lexicographic sort.

  The second argument is a sort type. See [sorting].

  The optional third argument gives the list's delimiter character. If not present, `<delimiter>` defaults to a space. The optional fourth argument gives a string that will delimit the resulting list; it defaults to `<delimiter>`.


## See Also
- [sortby()]
- [sortkey()]

