# WORDPOS()
`wordpos(<list>, <number>[, <delimiter>])`

  Returns the number of the word within `<list>` where the `<number>`th character falls. Characters and words are numbered starting with 1, and `<delimiter>`s between words are treated as belonging to the word that follows them. If the list is less than `<number>` characters long, #-1 is returned. `<delimiter>` defaults to a space.

  Example:
```
say wordpos(foo bar baz, 5)
You say, "2"
```


## See Also
- [member()]
- [pos()]

