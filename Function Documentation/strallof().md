# strfirstof()
# strallof()
`strfirstof(<expr>[, ... , <exprN>], <default>)`<br>
`strallof(<expr>[, ... , <exprN>], <osep>)`<br>
`strfirstof(<expr>)`<br>
`strallof(<expr>)`

  strfirstof() returns the first `<expr>` which evaluates to a non-empty string (a string at least 1 character long). If all `<expr>`s evaluate empty, `<default>` is returned instead.

  strallof() returns all `<expr>`s which evaluate to non-empty strings, with each expression separated by `<osep>`. With one argument, as TinyMUX takes it, that argument is the only `<expr>`; strfirstof() with one returns it.

  Examples:
```sharp
say strfirstof(,  ,@@(Nothing),foo,default)
You say, "foo"
```

    > say strfirstof(get(%#/fullname), u(%#/ansiname), %n)<br>
    You say, "Mike"

    > say strallof(,  ,foo,@@(Nothing),%b,bar|baz,#-1,|)<br>
    You say, "foo| |bar|baz|#-1"


::: seealso
- [ALLOF()]
- [FIRSTOF()]
- [FIRST()]
- [STRLEN()]
- [CAT()]
- [DEFAULT()]
:::

