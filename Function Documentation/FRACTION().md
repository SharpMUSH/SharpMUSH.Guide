# FRACTION()
`fraction(<number>[, <whole>])`

  This function returns a fraction representing the floating-point `<number>`, reduced to its
  lowest terms. Dividing the numerator by the denominator gives back exactly `<number>`.

  PennMUSH answers the *simplest* fraction within one part in 10^10 instead, which is not always
  the number you gave it — `fraction(pi())` is `348987/111086` there. Round `<number>` first if
  you want a simpler fraction than the one it names.

  If `<whole>` is true, and `<number>` is greater than 1.0 (or less than -1.0), the return value will be a whole number followed by the fraction representation of the decimal.

  Examples:
```sharp
think fraction(.75)
3/4
```

    > think fraction(pi())<br>
    3141593/1000000

    > think fraction(2)<br>
    2

    > think fraction(2.75)<br>
    11/4

    > think fraction(2.75, 1)<br>
    2 3/4

