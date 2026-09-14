# LISTSET()
`listset(<list>,<position>,<replacement>[,<input delimiter>[,<output delimiter>]])`

  Replaces the item at the one-based position in a list. Delimiters default to a space; the output delimiter defaults to the input delimiter. For example, `listset(a b c,2,x)` returns `a x c`.

  List replacement uses `listset()`. `lset()` sets lock flags.

**See Also:**
- [replace()]
- [lset()]

