# STRINSERT()
`strinsert(<string>, <position>, <insert>)`

  This function returns `<string>`, with `<insert>` added before the `<position>` character in `<string>`. Note that the first character in `<string>` is numbered 0, not 1.

  If `<position>` is less than 0, an error is returned. If `<position>` is greater than the length of `<string>`, `<insert>` is appended to it.

  Examples:
```
think strinsert(barbaz, 0, foo)
foobarbaz
think strinsert(Myname, 2, %b)
My name
```


## See Also
- [strdelete()]
- [linsert()]
- [strreplace()]

