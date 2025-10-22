# STRALLOF()
`strfirstof(<expr>[, ... , <exprN>], <default>)`
`strallof(<expr>[, ... , <exprN>], <osep>)`

  strfirstof() returns the first `<expr>` which evaluates to a non-empty string (a string at least 1 character long). If all `<expr>`s evaluate empty, `<default>` is returned instead.

  strallof() returns all `<expr>`s which evaluate to non-empty strings, with each expression separated by `<osep>`.

  Examples:
```
say strfirstof(,  ,@@(Nothing),foo,default)
You say, "foo"
```

    > say strfirstof(get(%#/fullname), u(%#/ansiname), %n)
    You say, "Mike"

    > say strallof(,  ,foo,@@(Nothing),%b,bar|baz,#-1,|)
    You say, "foo| |bar|baz|#-1"


## See Also
- [allof()]
- [firstof()]
- [first()]
- [strlen()]
- [cat()]
- [default()]

