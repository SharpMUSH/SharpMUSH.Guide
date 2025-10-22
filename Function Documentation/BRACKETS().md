# BRACKETS()
`brackets(<string>)`

  Returns a count of the number of left and right square brackets, parentheses, and curly braces in the string, in that order, as a space-separated list of numbers. This is useful for finding missing or extra brackets in MUSH code. `<string>` is evaluated.

  Example:
```
@desc me=This is [ansi(h,a test)] of the { brackets() function.
think brackets(v(desc))
1 1 2 2 1 0
```

