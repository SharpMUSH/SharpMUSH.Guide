# STRREPLACE()
`strreplace(<string>, <start>, <length>, <text>)`

  Returns `<string>` with the `<length>` characters starting at `<start>` replaced by `<text>`. As with most other string functions, the first character is at position 0.

  If `<start>` is less than 0, an error is returned, and if `<start>` is greater than the length of `<string>`, `<string>` is returned.

  strreplace() attempts to preserve ansi: if `<text>` contains ansi, it will be kept the same. If `<text>` contains no ansi, but `<string>` does, `<text>` will be inserted with the same ansi as the text it replaces. To force `<text>` to be inserted with no ansi, even if `<string>` has ansi, wrap it in ansi(n,....).

  Examples:
```
say strreplace(abcXYZgh, 3, 3, def)
You say, "abcdefgh"
```

    > think strreplace(Fix teh typo, 4, 3, the)
    Fix the typo


## See Also
- [strdelete()]
- [strinsert()]
- [ldelete()]
- [lreplace()]

