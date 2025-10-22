# LFLAGS()
`lflags()`
`lflags(<object>[/<attribute>])`

  With an argument, lflags() returns a space-separated list consisting of the names of all the flags attached to `<object>`, or `<object>`'s `<attribute>`.

  Given no arguments, this function returns a space-separated list of all flag names known to the server, as per @list/flags.

  Examples:
```
@create Test
@set Test=no_command puppet
think flags(Test)
NO_COMMAND PUPPET
```

    > think flags(me/describe)
    NO_COMMAND VISUAL


## See Also
- [flags()]
- [list()]

