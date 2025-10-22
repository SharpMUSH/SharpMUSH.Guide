# RESWITCH()
# RESWITCHI()
# RESWITCHALL()
# RESWITCHALLI()
`reswitch(<str>, <re1>, <list1>[, ... , <reN>, <listN>][, <default>])`
`reswitchall(<str>, <re1>, <list1>[, ... , <reN>, <listN>][, <default>])`
`reswitchi(<str>, <re1>, <list1>[, ... , <reN>, <listN>][, <default>])`
`reswitchalli(<str>, <re1>, <list1>[, ... , <reN>, <listN>][, <default>])`

  These functions are just like switch() except they compare `<string>` against a series of regular expressions, not wildcard patterns.

  reswitch() and reswitchall() are case-sensitive.

  reswitch() and reswitchi() return the `<list>` which corresponds to the first matched `<re>`, while reswitchall() and reswitchalli() return the `<list>`s corresponding to all matched `<re>`s. If no `<re>`s match, all four functions return `<default>`.

  The string "#$" in the `<list>`s will be replaced with the value of `<str>`, /before/ `<list>` is evaluated. You can also use $N in `<list>` to refer to the Nth subpattern which matched in `<re>`, with $0 being the entire matching string. Use $`<name>` (the '<>' are literal) to refer to named subpatterns.


## See Also
- [switch()]
- [regmatch()]
- [regedit()]
- [REGEXPS]

