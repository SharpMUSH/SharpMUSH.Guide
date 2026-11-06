# between()
`between(<low>, <high>, <value>[, <inclusive>])`

  Returns 1 if `<value>` lies between `<low>` and `<high>`, and 0 if it does not. The numbers may have decimals. Both ends are left out of the range unless `<inclusive>` is true.

  Examples:
```sharp
think between(1, 10, 5)
1
think between(1, 10, 10)
0
think between(1, 10, 10, 1)
1
```

::: seealso
- [BOUND()]
- [GT()]
- [LT()]
:::

