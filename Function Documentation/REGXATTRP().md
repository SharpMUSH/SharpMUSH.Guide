# REGXATTRP()
`xattr(<object>[/<attribute pattern>], <start>, <count>[, <osep>])`
`xattrp(<object>[/<attribute pattern>], <start>, <count>[, <osep>])`
`regxattr(<object>[/<regexp>], <start>, <count>[, <osep>])`
`regxattrp(<object>[/<regexp>], <start>, <count>[, <osep>])`

  xattr() fetches `<count>` or fewer attribute names from `<object>` starting at position `<start>`. It is useful when the number of attributes on an object causes lattr() to exceed the buffer limit. The resulting list is separated by `<osep>`, which defaults to a space. `<start>` begins at 1.

  It is equivalent to
`extract(lattr(<object>[/<attribute pattern>]), <start>, <count>, <osep>)`

  `<attribute pattern>` is a wildcard pattern which defaults to "*"; use "**" to get all attributes, including leaf attributes in trees. regxattr() matches attributes against the regular expression `<regexp>`.

  xattrp() and regxattrp() will include attributes from parents. Do note that parent attributes are listed _after_ child attributes, not sorted alphabetically.


## See Also
- [nattr()]
- [lattr()]
- [WILDCARDS]
- [REGEXPS]

