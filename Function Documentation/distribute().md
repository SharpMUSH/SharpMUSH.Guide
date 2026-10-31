# distribute()
`distribute(<points>, <bins>[, <osep>])`

  Shares `<points>` out at random among `<bins>` bins, each point going to any bin with the same chance, and returns how many points each bin got. `<points>` may be 0 to 1,000,000 and `<bins>` 1 to 2,000. `<osep>` separates the counts and defaults to a space.

  Examples:
```sharp
think distribute(10, 1)
10
think distribute(0, 3, |)
0|0|0
think distribute(100, 4)
27 22 26 25
```

::: seealso
- [CHOOSE()]
- [DIE()]
- [LRAND()]
:::

