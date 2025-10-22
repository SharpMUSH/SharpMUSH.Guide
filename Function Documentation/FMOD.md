# FMOD()
`fmod(<number>, <divisor>)`

  Similar to remainder() but may take floating point arguments. The return value is `<number>` - n * `<divisor>`, where n is the quotient of `<number>` / `<divisor>`, rounded towards zero. The result has the same sign as `<number>` and a magnitude less than the magnitude of `<divisor>`.

  Example:
```
think fmod(6.1,2.5)
1.1
```

## See Also
- [fdiv()]
- [div()]
- [mod()]
- [lmath()]

