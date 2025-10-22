# SIGN()
`sign(<number>)`

  Essentially returns the sign of a number -- 0 if the number is 0, 1 if the number is positive, and -1 if the number is negative. This is equivalent to bound(`<number>`, -1, 1).

  Example:
```
say sign(-4)
You say, "-1"
```

    > say sign(2)
    You say, "1"

    > say sign(0)
    You say, "0"


## See Also
- [abs()]
- [bound()]

