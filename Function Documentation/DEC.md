# DEC()
`dec(<integer>)`
`dec(<string-ending-in-integer>)`

  dec() returns the given `<integer>` minus 1. If given a string that ends in an integer, it decrements only the final integer portion. That is:

```
    > think dec(3)
    2
```
```
    > think dec(hi3)
    hi2
```
```
    > think dec(1.3.3)
    1.3.2
```
```
    > think dec(1.3)
    1.2
```

  Note especially the last example, which will trip you up if you use floating point numbers with dec() and expect it to work like sub().

  If the null_eq_zero @config option is on, using dec() on a string which does not end in an integer will return `<string>`-1. When null_eq_zero is turned off, it will return an error.


## See Also
- [inc()]
- [sub()]

