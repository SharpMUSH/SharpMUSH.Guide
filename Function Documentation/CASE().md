# SWITCH()
# SWITCHALL()
# CASE()
# CASEALL()
`switch(<str>, <expr1>, <list1>[, ... , <exprN>, <listN>][, <default>])`
`switchall(<str>, <expr1>, <list1>[, ... , <exprN>, <listN>][, <default>])`
`case(<str>, <expr1>, <list1>[, ... , <exprN>, <listN>][, <default>])`
`caseall(<str>, <expr1>, <list1>[, ... , <exprN>, <listN>][, <default>])`

  These functions match `<string>` against the `<expr>`essions, returning the corresponding `<list>`. If nothing is matched, the `<default>` is returned. switch() and case() return the `<str>` for the first matching `<expr>`, while switchall() and caseall() return the corresponding `<list>` for all `<expr>`s which match.

  switch() and switchall() use wildcard and lt/gt `<expr>`s, as described in [switch wildcards]. case() and caseall() do a case-sensitive exact match, like member() or comp(). In this case, $0-$9 will be set to the text that the nth wildcard character met.

  If the string "#$" appears in the `<list>` to be evaluated, it will be replaced with the evaluated value of `<str>` /before/ evaluation of `<list>`. This is not done in case() and caseall(), for TinyMUSH 3 compatibility. Note that this replacement happens before evaluation, which makes it unsafe when `<str>` contains user input, and makes it unsuitable for use in nested switch()es. It is strongly recommended you use the %$`<n>` substitution or stext() function instead, which solves these problems.

  See [switch2] for examples.


## See Also
- [reswitch()]
- [stext()]
- [slev()]
- [if()]
- [cond()]
- [firstof()]

