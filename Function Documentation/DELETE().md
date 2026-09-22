# STRDELETE()
# DELETE()
`strdelete(<string>, <first>, <len>)`

  Return a modified `<string>`, with `<len>` characters starting after the character at position `<first>` deleted. In other words, it copies `<first>` characters, skips `<len>` characters, and then copies the remainder of the string. If `<len>` is negative, deletes characters leftwards from `<first>`. Characters are numbered starting at 0.

  Examples:
```sharp
say strdelete(abcdefgh, 3, 2)
You say, "abcfgh"
```
```sharp
    > say strdelete(abcdefgh, 3, -2)
    You say, "abcdefgh"
```
  A negative `<len>` deletes nothing. PennMUSH's own help claims it deletes backwards from
  `<first>`, but fun_delete leaves the count negative and ansi_string_delete returns early on it,
  so 1.8.8 answers the string untouched; SharpMUSH follows the code.

  A `<first>` past the end of the string, and a `<len>` of zero, likewise answer the string
  untouched. A negative `<first>` is `#-1 OUT OF RANGE`.

  delete() is an alias for strdelete(), for backwards compatability.


**See Also:**
- [strreplace()]
- [strinsert()]
- [mid()]
- [ldelete()]

