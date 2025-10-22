# LPOS()
`lpos(<string>, <character>)`

  This function returns a list of the positions where `<character>` appears in `<string>`, with the first character of the string being 0. Note that this differs from the pos() function, but is consistent with other string functions like mid() and strdelete().

  If `<character>` is a null argument, space is used. If `<character>` is not found anywhere in `<string>`, an empty list is returned.

  Example:
```
say lpos(a-bc-def-g, -)
You say, "1 4 8"
```


## See Also
- [pos()]
- [member()]
- [match()]
- [wordpos()]

