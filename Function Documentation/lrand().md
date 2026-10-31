# lrand()
`lrand(<low>, <high>, <count>[, <osep>])`

  Returns `<count>` random whole numbers from `<low>` to `<high>`, both included, separated by `<osep>` (a space by default). At most 8,000 numbers are returned. The result is empty when `<count>` is less than 1 or `<low>` is greater than `<high>`.

  Examples:
```sharp
think lrand(1, 6, 3)
4 1 6
think lrand(5, 5, 3, |)
5|5|5
```

::: seealso
- [DIE()]
- [RAND()]
- [DISTRIBUTE()]
:::

