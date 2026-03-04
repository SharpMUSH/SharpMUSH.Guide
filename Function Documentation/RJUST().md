# RJUST()
`rjust(<string>, <length>[, <fill>[, <truncate?>]])`

  This function returns `<string>`, padded on the left with the string `<fill>` until it's `<length>` characters long. `<fill>` can be more than one character in length, and defaults to a single space.

  If `<string>` is longer than `<length>`, it will be returned unaltered, unless `<truncate?>` is true, in which case only the last `<length>` characters of `<string>` are returned.

  Examples:
```sharp
say -[rjust(foo,6)]-
You say, "-   foo-"
```

    > say %r0[rjust(foo,6,-)]%r01234567<br>
    You say, "<br>
    0---foo7<br>
    01234567"

    > say rjust(foo,12,=-)<br>
    You say, "=-=-=-=-=foo"

    > say rjust(This is too long,9,,1)<br>
    You say, " too long"


**See Also:**
- [align()]
- [center()]
- [ljust()]
- [right()]

