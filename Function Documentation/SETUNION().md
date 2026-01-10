# SETUNION()
`setunion(<list1>, <list2>[, <delimiter>[, <sort type>[, <osep>]]])`

  This function returns the union of two sets -- i.e., all the elements of both `<list1>` and `<list2>`, minus any duplicate elements. The list returned is sorted. Normally, alphabetic sorting is done. You can change this with the fourth argument, which is a sort type as defined in [sorting]. If used with exactly four arguments where the fourth is not a sort type, it's treated instead as the output separator.

  Examples:
```
say setunion(foo baz gleep bar, bar moof gleep)
You say, "bar baz foo gleep moof"
```

    > say setunion(1.1 1.0, 1.000)
    You say, "1.0 1.000 1.1"

    > say setunion(1.1 1.0, 1.000, %b, f)
    You say, "1.0 1.1"


## See Also
- [setdiff()]
- [setinter()]
- [setsymdiff()]

