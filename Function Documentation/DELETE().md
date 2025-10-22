# DELETE()
`strdelete(<string>, <first>, <len>)`

  Return a modified `<string>`, with `<len>` characters starting after the character at position `<first>` deleted. In other words, it copies `<first>` characters, skips `<len>` characters, and then copies the remainder of the string. If `<len>` is negative, deletes characters leftwards from `<first>`. Characters are numbered starting at 0.

  Examples:
```
say strdelete(abcdefgh, 3, 2)
You say, "abcfgh"
```
```
    > say strdelete(abcdefgh, 3, -2)
    You say, "abefgh"
```
  delete() is an alias for strdelete(), for backwards compatability.


## See Also
- [strreplace()]
- [strinsert()]
- [mid()]
- [ldelete()]

