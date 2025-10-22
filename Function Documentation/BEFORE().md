# BEFORE()
`before(<string1>, <string2>)`

  Returns the portion of `<string1>` that occurs before `<string2>`. If `<string2>` isn't in `<string1>`, `<string1>` is returned. This is case-sensitive.

  Examples:
```
say before(foo bar baz,bar)
You say, "foo"
say before(foo bar baz,r)
You say, "foo ba"
say before(foo bar baz,a)
You say, "foo b"
```


## See Also
- [after()]
- [first()]

