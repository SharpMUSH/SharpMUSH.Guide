# XGET()
`get(<object>/<attribute>)`
`xget(<object>, <attribute>)`

  These functions return the string stored in an `<object>`'s `<attribute>` attribute, without evaluating it. You must be able to examine the attribute. get() and xget() are identical, apart from the argument separator.

    Example:
```
&test me=This is [a test].
think get(me/test)
This is [a test].
```


## See Also
- [hasattr()]
- [visible()]
- [ufun()]
- [default()]
- [udefault()]

