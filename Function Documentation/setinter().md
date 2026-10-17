# setinter()
`setinter(<list1>, <list2>[, <delimiter>[, <sort type>[, <osep>]]])`

  This function returns the intersection of two sets -- i.e., the elements that are in both `<list1>` and `<list2>`. The list that is returned is sorted. Natural sorting is the default. You can change this with the fourth argument, which is a sort type as defined in [SORTING]. With four arguments, an empty fourth joins without separators. Otherwise it is a sort type; unknown types keep the default sort. Output uses the input delimiter unless you supply `<osep>` as argument five.

  Example:
```sharp
say setinter(foo baz gleep bar, bar moof gleep)
You say, "bar gleep"
```


::: seealso
- [SETDIFF()]
- [SETSYMDIFF()]
- [SETUNION()]
:::

