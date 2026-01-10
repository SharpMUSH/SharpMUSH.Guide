# SETSYMDIFF()
`setsymdiff(<list1>, <list2>[, <delimiter>[, <sort type>[, <osep>]]])`

  This function returns the symmetric difference of two sets -- i.e., the elements that only appear in one or the other of the lists, but not in both. The list that is returned is sorted. Normally, alphabetic sorting is done. You can change this with the fourth argument, which is a sort type as defined in [sorting]. If used with exactly four arguments where the fourth is not a sort type, it's treated instead as the output separator.

  Example:
```
say setsymdiff(foo baz gleep bar, bar moof gleep)
You say, "baz foo moof"
```


## See Also
- [setdiff()]
- [setinter()]
- [setunion()]

