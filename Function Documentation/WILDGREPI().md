# GREP()
# REGREP()
# WILDGREP()
# GREPI()
# REGREPI()
# WILDGREPI()
# PGREP()
`grep(<object>, <attrs>, <substring>)`<br>
`wildgrep(<object>, <attrs>, <pattern>)`<br>
`regrep(<object>, <attrs>, <regexp>)`<br>
`grepi(<object>, <attrs>, <substring>)`<br>
`regrepi(<object>, <attrs>, <regexp>)`<br>
`wildgrepi(<object>, <attrs>, <pattern>)`<br>
`pgrep(<object>, <attrs>, <substring>)`

  These functions return a list of attributes on `<object>` containing `<substring>`, matching the wildcard `<pattern>`, or matching the regular expression `<regexp>`. `<attrs>` is a wildcard pattern for attribute names to search.

  Parsing _does_ occur before this function is invoked. Therefore, "special" characters will need to be escaped out.

  grep()/wildgrep()/regrep() are case-sensitive.<br>
  grepi()/wildgrepi()/regrepi() are case-insensitive.

  pgrep() works like grep(), but also checks attributes inherited from parents.


**See Also:**
- [@grep]
- [lattr()]
- [WILDCARDS]

