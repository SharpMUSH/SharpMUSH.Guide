# REGRABI()
`grab(<list>, <pattern>[, <delimiter>])`
`regrab(<list>, <regexp>[, <delimiter>])`
`regrabi(<list>, <regexp>[, <delimiter>])`

  These functions return the first word in `<list>` which matches the pattern. For grab(), `<pattern>` is a wildcard pattern ([wildcards]). For regrab() and regrabi(), the pattern is a regular expression. regrabi() is case-insensitive. `<delimiter>` defaults to a space.

  Basically, this is a much more efficient way to do:
`elements(<list>, match(<list>, <pattern>[, <delimiter>])[, <delimiter>])`
  or the regular expression variation thereof.


## See Also
- [graball()]
- [match()]
- [extract()]
- [elements()]
- [regmatch()]

