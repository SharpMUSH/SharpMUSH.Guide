# CENTER()
`center(<string>, <width>[, <fill>[, <rightfill>]])`

  This function will center `<string>` within a field `<width>` characters wide, using the `<fill>` string for padding on the left side of the string, and `<rightfill>` for padding on the right side. `<rightfill>` defaults to the mirror-image of `<fill>` if not specified. `<fill>` defaults to a space if neither `<fill>` nor `<rightfill>` are specified.

  If `<string>` divides `<width>` into uneven portions, the left side will be one character shorter than the right side.

  Examples:
```
say center(X,5,-)
You say, "--X--"
```

    > say center(X,5,-=)
    You say, "-=X=-"

    > say center(.NEAT.,15,-,=)
    You say, "----.NEAT.====="

    > say center(hello,16,12345)
    You say, "12345hello543215"


## See Also
- [align()]
- [ljust()]
- [rjust()]

