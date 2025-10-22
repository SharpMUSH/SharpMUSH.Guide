# RJUST()
`rjust(<string>, <length>[, <fill>[, <truncate?>]])`

  This function returns `<string>`, padded on the left with the string `<fill>` until it's `<length>` characters long. `<fill>` can be more than one character in length, and defaults to a single space.

  If `<string>` is longer than `<length>`, it will be returned unaltered, unless `<truncate?>` is true, in which case only the last `<length>` characters of `<string>` are returned.

  Examples:
```
say -[rjust(foo,6)]-
You say, "-   foo-"
```

    > say %r0[rjust(foo,6,-)]%r01234567
    You say, "
    0---foo7
    01234567"

    > say rjust(foo,12,=-)
    You say, "=-=-=-=-=foo"

    > say rjust(This is too long,9,,1)
    You say, " too long"


## See Also
- [align()]
- [center()]
- [ljust()]
- [right()]

