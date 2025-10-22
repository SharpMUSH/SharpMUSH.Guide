# AFTER()
`after(<string1>, <string2>)`

  Returns the portion of `<string1>` that occurs after `<string2>`. If `<string2>` isn't in `<string1>`, the function returns nothing. This is case-sensitive.

  Examples:
```
> say after(foo bar baz,bar)
You say, " baz"
```
```
> say after(foo bar baz,ba)
You say, "r baz"
```

## See Also
- [before()]
- [rest()]

