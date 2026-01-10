# SETDIFF()
`setdiff(<list1>, <list2>[, <delimiter>[, <sort type>[, <osep>]]])`

  This function returns the difference of two sets -- i.e., the elements in `<list1>` that aren't in `<list2>`. The list that is returned is sorted. Normally, alphabetic sorting is done. You can change this with the fourth argument, which is a sort type as defined in [sorting]. If used with exactly four arguments where the fourth is not a sort type, it's treated instead as the output separator.

  Example:
```
say setdiff(foo baz gleep bar, bar moof gleep)
You say, "baz foo"
```


## See Also
- [setinter()]
- [setsymdiff()]
- [setunion()]

