# MEMBER()
`member(<list>, <word>[, <delimiter>])`

  member() returns the position where `<word>` first occurs in `<list>`. If `<word>` is not present in `<list>`, it returns 0. Elements of `<list>` are `<delimiter>`-separated, or space-separated if no `<delimiter>` is given.

  member() is case-sensitive, and does not perform wildcard matching. If you need to do a wildcard match, use match(). To compare two strings (instead of a word and list elements), consider comp().


## See Also
- [match()]
- [grab()]
- [comp()]
- [strmatch()]

