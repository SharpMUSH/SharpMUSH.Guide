# DIE()
`die(<number of times to roll die>, <number of sides on die>[, <show>])`

  This function simulates rolling dice. It "rolls" a die with a given number of sides, a certain number of times, and adds the results. For example, DIE(2, 6) would roll "2d6" - two six-sided dice, generating a result in the range 2-12. The maximum number of dice this function will roll in a single call is 700. If `<show>` is true, the result will be a space-seperated list of the individual rolls rather than their sum.

  Examples:
```
think die(3, 6)
6
think die(3, 6, 1)
5 2 1
```

## See Also
- [rand()]

