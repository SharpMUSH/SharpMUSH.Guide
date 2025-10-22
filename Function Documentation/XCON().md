# XVCON()
# XCON()
`xcon(<object>, <start>, <count>)`
`xvcon(<object>, <start>, <count>)`

  xcon() fetches `<count>` or fewer item dbrefs from `<object>`'s contents starting at position `<start>`. It is useful when the number of objects in a container causes lcon() to exceed the buffer limit.

  It is equivalent to extract(lcon(`<object>`), `<start>`, `<count>`)

  xvcon() is identical, but follows the restrictions of lvcon().


## See Also
- [ncon()]
- [lcon()]
- [lvcon()]

