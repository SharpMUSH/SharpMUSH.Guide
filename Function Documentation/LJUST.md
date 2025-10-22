# LJUST()
`ljust(<string>, <length>[, <fill>[, <truncate?>]])`

  This function returns `<string>`, padded with the string `<fill>` until it's `<length>` characters long. `<fill>` can be more than one character in length, and defaults to a single space.

  If `<string>` is longer than `<length>`, it will be returned unaltered, unless `<truncate?>` is true, in which case only the first `<length>` characters of `<string>` are returned.

  Examples:
```
say ljust(foo,6)
You say, "foo   "
```

    > say %r0[ljust(foo,6,-)]7%r01234567
    You say, "
    0foo---7
    01234567"

    > say ljust(foo,12,=+)
    You say, "foo=+=+=+=+="

    > say ljust(This is too long,9,,1)
    You say, "This is t"


## See Also
- [align()]
- [center()]
- [rjust()]
- [left()]

