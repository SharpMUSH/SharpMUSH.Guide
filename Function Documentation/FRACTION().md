# FRACTION()
`fraction(<number>[, <whole>])`

  This function returns a fraction representing the floating-point `<number>`. Since not all numbers can be expressed as a fraction, dividing the numerator by the denominator of the results will not always return the original `<number>`, but something close to it.

  If `<whole>` is true, and `<number>` is greater than 1.0 (or less than -1.0), the return value will be a whole number followed by the fraction representation of the decimal.

  Examples:
```
think fraction(.75)
3/4
```

    > think fraction(pi())
    348987/111086

    > think fraction(2)
    2

    > think fraction(2.75)
    11/4

    > think fraction(2.75, 1)
    2 3/4

