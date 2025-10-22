# MERGE()
`merge(<string1>, <string2>, <characters>)`

  This function merges `<string1>` and `<string2>`, depending on `<characters>`. If a character in `<string1>` is the same as one in `<characters>`, it is replaced by the character in the corresponding position in `<string2>`. The two strings must be of the same length.

  Example:
```
say merge(AB--EF,abcdef,-)
You say, "ABcdEF"
```

  Spaces need to be treated specially. An empty argument is considered to equal a space, for `<characters>`.

  Example:
```
say merge(AB[space(2)]EF,abcdef,)
You say, "ABcdEF"
```


## See Also
- [splice()]
- [tr()]

