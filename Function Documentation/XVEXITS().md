# XVEXITS()
# XEXITS()
`xexits(<room>, <start>, <count>)`
`xvexits(<room>, <start>, <count>)`

  xexits() fetches `<count>` or fewer exit dbrefs from `<room>` starting at position `<start>`. It is useful when the number of exits in a container causes lexits() to exceed the buffer limit.

  It is equivalent to extract(lexits(`<room>`), `<start>`, `<count>`)

  xvexits() is identical, but follows the restrictions of lvexits().


## See Also
- [nexits()]
- [lexits()]
- [lvexits()]

