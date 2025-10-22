# NULL()
`@@(<expression>)`
`null(<expression>[, ... , <expression>])`

  The @@() function does nothing and returns nothing. It does not evaluate its argument. It could be used for commenting, perhaps.

  The null() function is similar, but does evaluate its argument(s), so side-effects can occur within a null(). Useful for eating the output of functions when you don't use that output.


## See Also
- [@@]

