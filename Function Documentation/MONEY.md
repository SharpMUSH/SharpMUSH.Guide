# MONEY()
`money(<integer>)`
`money(<object>)`

  If given an integer, money() returns the appropriate name (either singular or plural) for that amount of money, as set in the money_singular and money_plural @config options.

  Otherwise, it returns the amount of money `<object>` has. If `<object>` has the no_pay power, the value of the 'max_pennies' @config option is returned. `<object>` must have the power itself, rather than inheriting it from its owner, in this case.

  Examples:
```
say money(Javelin)
You say, "150"
```

    > say money(1)
    You say, "Penny"

    > say money(2)
    You say, "Pennies"

    > &counter CvC=$count *: @say %0 [money(%0)]. Ah.. ah.. ah.
    > count 2
    Count von Count says, "2 Pennies. Ah.. ah.. ah."


## See Also
- [score]

