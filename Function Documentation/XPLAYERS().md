# XPLAYERS()
`xplayers(<object>, <start>, <count>)`
`xvplayers(<object>, <start>, <count>)`

  xplayers() fetches `<count>` or fewer player dbrefs from `<object>`'s contents starting at position `<start>`. It is useful when the number of players in a container causes lplayers() to exceed the buffer limit. It is equivalent to

`extract(lplayers(<object>), <start>, <count>)`

  xvplayers() is identical, but follows the restrictions of lvplayers().


## See Also
- [nplayers()]
- [lplayers()]
- [lvplayers()]
- [xthings()]
- [xexits()]

