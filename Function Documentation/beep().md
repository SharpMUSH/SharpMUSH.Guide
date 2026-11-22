# beep()
`beep([<number>])`

  Returns `<number>` "alert" bell characters. `<number>` must be in the range 1 to 5, or, if unspecified, defaults to 1. This function may only be used by royalty and wizards.

  A bell works as a list delimiter, as in PennMUSH, for a function that keeps colour; one that takes colour off its arguments, such as `words()` or `member()`, takes the bell off too. A marked separator works in both, without a control character; see [list separators].

```sharp
think extract(a[beep()]b[beep()]c,2,1,beep())
b
think words(a%*<|>b%*<|>c,%*<|>)
3
```


