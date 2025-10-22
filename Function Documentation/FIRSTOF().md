# FIRSTOF()
`firstof(<expr>[, ... , <exprN>], <default>)`

  Returns the first evaluated `<expr>` that is true. If no `<expr>` arguments are true, `<default>` is returned.

  The meaning of true or false is dependent on configuration options as explained in the 'BOOLEAN VALUES' help topics.

  This function evaluates arguments one at a time, stopping as soon as one is true.

  Examples:
```
say firstof(0,2)
You say, "2"
```

    > say firstof(10,11,0)
    You say, "10"

    > say firstof(grab(the cat,mommy),grab(in the hat,daddy),#-1 Error)
    You say, "#-1 Error"

    > say firstof(get(%#/royal cheese),#-1 This Has No Meaning,0,)
    You say, ""


## See Also
- [allof()]
- [BOOLEAN VALUES]
- [strfirstof()]
- [filter()]

