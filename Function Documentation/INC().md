# INC()
`inc(<integer>)`
`inc(<string-ending-in-integer>)`

  inc() returns the integer plus 1. If given a string that ends in an integer, it increments only the final integer portion. That is:

  Examples:
```
think inc(3)
4
```

    > think inc(hi3)
    hi4

    > think inc(1.3.3)
    1.3.4

  Note especially the last example, which will trip you up if you use floating point numbers with inc() and expect it to work like add().

  If the null_eq_zero @config option is on, using inc() on a string which does not end in an integer will return `<string>`1. When null_eq_zero is turned off, it will return an error.


## See Also
- [dec()]
- [add()]
- [sub()]

