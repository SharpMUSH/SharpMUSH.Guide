# INSERT()
# LINSERT()
`linsert(<list>, <position>, <new item>[, <delim>])`

  If `<position>` is a positive integer, this inserts `<new item>` BEFORE the item at `<position>` from the left in `<list>`. That means that `<new item>` then becomes the `<position>`th element of `<list>`.

  If `<position>` is a negative integer, this inserts `<new item>` AFTER the item at the absolute value of `<position>` from the RIGHT in `<list>`. This is the same as reversing the list before inserting `<new item>`, and then reversing it again into correct order. For example, when `<position>` is -1, `<new item>` will be the last in the list; when `<position>` is -2, `<new item>` will be the second item from the right, and so on.

  If a `<delim>` is not given, a space is assumed. Null items are counted when determining position, as in 'items()'.

  Examples:
```
say linsert(This is a string,4,test)
You say, "This is a test string"
say linsert(one|three|four,2,two,|)
You say, "one|two|three|four"
say linsert(meep bleep gleep,-3,GOOP)
You say, "meep GOOP bleep gleep"
```

  insert() is an alias for linsert(), for backwards compatability.


## See Also
- [lreplace()]
- [ldelete()]
- [strinsert()]

