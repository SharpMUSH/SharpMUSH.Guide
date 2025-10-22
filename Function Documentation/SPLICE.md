# SPLICE()
`splice(<list1>, <list2>, <word>[, <delimiter>])`

  This function splices `<list1>` and `<list2>` together. `<list1>` and `<list2>` are space-separated lists of words.

  If a word in `<list1>` is the same as `<word>`, it is replaced by the word in the corresponding position in `<list2>`. Both lists must have the same
  number of words.

  Example:
```
say splice(foo bar baz,eek moof gleep,bar)
You say, "foo moof baz"
```


## See Also
- [merge()]

