# LATTR()
# LATTRP()
# REGLATTR()
# REGLATTRP()
`lattr(<object>[/<attribute pattern>][, <output separator>])`
`lattrp(<object>[/<attribute pattern>][, <output separator>])`
`reglattr(<object>[/<regexp>][, <output separator>])`
`reglattrp(<object>[/<regexp>][, <output separator>])`

  lattr() returns a list of all the attributes on `<object>` which you can see, and which match the wildcard `<attribute pattern>`. If no `<attribute pattern>` is given, it defaults to "*". Note that this does not include branches in attribute trees; you must use the "**" wildcard to include those.

  The resulting list will be separated by `<output separator>`, or a space if no separator is given.

  reglattr() returns attributes whose names match the regexp `<regexp>`. The match is not case-sensitive (as attribute names are always upper-case), and the "`" branch separator has no special meaning in the pattern.

  lattrp() and reglattrp() also include attributes inherited from parents.

  When returning large numbers of attributes, the results may be truncated due to buffer limits. In these cases, you can use nattr() and xattr() to retrieve the results in smaller pieces.


## See Also
- [nattr()]
- [xattr()]
- [hasattr()]
- [examine]
- [grep()]
- [WILDCARDS]

