# REGLMATCHALLI()
`reglmatch(<list>, <regexp>[, <delimiter>])`
`reglmatchi(<list>, <regexp>[, <delimiter>])`
`reglmatchall(<list>, <regexp>[, <delimiter>[, <output separator>]])`
`reglmatchalli(<list>, <regexp>[, <delimiter>[, <output separator>]])`

  These functions are the regexp versions of match() and matchall(). reglmatch() returns the position of the first element in `<list>` which matches the regular expression `<regexp>`. reglmatchi() does the same thing, but case-insensitively.

  reglmatchall() returns the positions of all elements in `<list>` which match `<regexp>`. reglmatchalli() is case-insensitive.

  In all cases, the elements of `<list>` are separated by `<delimiter>`, which defaults to a space. The elements outputted by reglmatchall() are separated by `<output separator>`, if one is given, or by `<delimiter>` if not.

  See [reglmatch2] for examples.

## See Also
- [regmatch()]
- [regrab()]
- [match()]
- [REGEXP SYNTAX]

