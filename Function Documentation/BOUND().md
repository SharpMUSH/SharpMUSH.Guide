# BOUND()
`bound(<number>, <lower bound>, <higher bound>)`

  bound() returns `<number>` if it is between `<lower bound>` and `<higher bound>`. If it's lower than `<lower bound>`, `<lower bound>` is returned. If it's higher than `<higher bound>`, `<higher bound>` is returned.

  If you just want to know whether `<number>` is within the range of `<lower>` to `<higher>`, consider using lte(`<lower>`, `<number>`, `<higher>`) instead to get a boolean result.


## See Also
- [ceil()]
- [floor()]
- [round()]
- [trunc()]

