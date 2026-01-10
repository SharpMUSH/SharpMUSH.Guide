# COND()
# CONDALL()
# NCOND()
# NCONDALL()
`cond(<cond>, <expr>[, ... , <condN>, <exprN>][, <default>])`
`condall(<cond>, <expr>[, ... , <condN>, <exprN>][, <default>])`
`ncond(<cond>, <expr>[, ... , <condN>, <exprN>][, <default>])`
`ncondall(<cond>, <expr>[, ... , <condN>, <exprN>][, <default>])`

  cond() evaluates `<cond>`s until one returns a true value. Should none return true, `<default>` is returned.

  condall() returns all `<expr>`s for those `<cond>`s that evaluate to true, or `<default>` if none are true.

  ncond() and ncondall() are identical to cond(), except it returns `<expr>`s for which `<cond>`s evaluate to false.

  Examples:
```
say cond(0,This is false,#-1,This is also false,#123,This is true)
You say, "This is true"
```

    > say ncond(0,This is false,#-1,This is also false,#123,This is true)
    You say, "This is false"

    > say ncondall(0,This is false,#-1,This is also false,#123,This is true)
    You say, "This is falseThis is also false"


## See Also
- [firstof()]
- [allof()]

