# MID()
`mid(<string>, <first>, <length>)`

  mid() returns `<length>` characters from `<string>`, starting from the `<first>` character. If `<length>` is positive, it counts forwards from the `<first>` character; for negative `<length>`s, it counts backwards. Note that the first character in `<string>` is numbered 0, not 1.

  Examples:
```
say mid(testing, 2, 2)
You say, "st"
say mid(testing, 2, -2)
You say, "es"
```


## See Also
- [left()]
- [right()]
- [strdelete()]

