# LDELETE()
`ldelete(<list>, <position(s)>[, <delimiter>[, <osep>]])`

  This function deletes the element(s) of `<list>` at the given `<position(s)>`. Elements of `<list>` are separated by `<delimiter>`, which defaults to a space. Null items are counted, as in 'items()'. Elements of `<position(s)>` must be numeric, and are always separated by a space, not by `<delimiter>`. Elements of the returned list are separated by `<osep>`, which defaults to the `<delimiter>`.

  If a `<position>` is negative, ldelete() counts backwards from the end of the list; a position of -1 deletes the last element, -2 the element before last, and so on.

  All position calculations are performed on the original list. That is, ldelete(a b c, -1 -1) will return "a b", not "a", and ldelete(a b c, -1 -2) returns "a", not "b".

  Examples:
```
say ldelete(This is a long test string,4)
You say, "This is a test string"
say ldelete(lemon|orange|pear|apple,2 3,|)
You say, "lemon|apple"
say ldelete(foo bar baz boing,3,,%b~%b)
You say, "foo ~ bar ~ boing"
```


## See Also
- [strdelete()]
- [remove()]
- [linsert()]

