# GREP()
# REGREP()
# WILDGREP()
# GREPI()
# REGREPI()
# WILDGREPI()
# PGREP()
`grep(<object>, <attrs>, <substring>)`
`wildgrep(<object>, <attrs>, <pattern>)`
`regrep(<object>, <attrs>, <regexp>)`
`grepi(<object>, <attrs>, <substring>)`
`regrepi(<object>, <attrs>, <regexp>)`
`wildgrepi(<object>, <attrs>, <pattern>)`
`pgrep(<object>, <attrs>, <substring>)`

  These functions return a list of attributes on `<object>` containing `<substring>`, matching the wildcard `<pattern>`, or matching the regular expression `<regexp>`. `<attrs>` is a wildcard pattern for attribute names to search.

  Parsing _does_ occur before this function is invoked. Therefore, "special" characters will need to be escaped out.

  grep()/wildgrep()/regrep() are case-sensitive.
  grepi()/wildgrepi()/regrepi() are case-insensitive.

  pgrep() works like grep(), but also checks attributes inherited from parents.


## See Also
- [@grep]
- [lattr()]
- [WILDCARDS]

