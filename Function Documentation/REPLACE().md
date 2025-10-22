# REPLACE()
`lreplace(<list>, <position(s)>, <new item>[, <delimiter>[, <osep>]])`

  This replaces the item(s) at the given `<position(s)>` in `<list>` with `<new item>`. `<delimiter>` defaults to a space, and `<osep>` defaults to `<delimiter>`. Null items are counted when determining position.

  If `<position>` is negative, it counts backwards from the end of the list. A `<position>` of -1 will replace the last element, -2 the element before last, and so on.

  Examples:
```
say lreplace(Turn north at the junction,2,south)
You say, "Turn south at the junction"
```

    > say lreplace(Turn north at the junction,-1,crossroads)
    You say, "Turn north at the crossroads"

    > say lreplace(blue|red|green|yellow,3,white,|)
    You say, "blue|red|white|yellow"

    > say lreplace(this starts and ends the same, 1 -1, foo)
    You say, "foo starts and ends the foo"

  replace() is an alias for lreplace(), for backwards compatability.


## See Also
- [ldelete()]
- [linsert()]
- [setdiff()]
- [splice()]
- [strreplace()]

