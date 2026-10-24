# setunion()
`setunion(<list1>, <list2>[, <delimiter>[, <sort type>[, <osep>]]])`

  This function returns the union of two sets -- i.e., all the elements of both `<list1>` and `<list2>`, minus any duplicate elements. The list returned is sorted. Natural sorting is the default. You can change this with the fourth argument, which is a sort type as defined in [SORTING]. With four arguments, an empty fourth joins without separators. Otherwise it is a sort type; unknown types keep the default sort. Output uses the input delimiter unless you supply `<osep>` as argument five.

  TinyMUX writes the output separator before the sort type: `setunion(<list1>, <list2>, <delimiter>, <osep>, <sort type>)`. When the fourth argument names no sort type and the fifth does, it is read that way. The same goes for setdiff(), setinter() and setsymdiff().

    > say setunion(B a c, b, %b, |, a)<br>
    You say, "B|a|b|c"

  Examples:
```sharp
say setunion(foo baz gleep bar, bar moof gleep)
You say, "bar baz foo gleep moof"
```

    > say setunion(1.1 1.0, 1.000)<br>
    You say, "1.0 1.000 1.1"

    > say setunion(1.1 1.0, 1.000, %b, f)<br>
    You say, "1.0 1.1"


::: seealso
- [SETDIFF()]
- [SETINTER()]
- [SETSYMDIFF()]
:::

