# strip()
`strip(<string>[, <characters>[, <keep>]])`

  Removes every one of `<characters>` from `<string>`, wherever it appears. Case matters. When `<keep>` is 1, it keeps only those characters instead. Without `<characters>`, it returns `<string>` without its markup, as stripansi() does. Either way the result has no markup.

  Examples:
```sharp
think strip(This is a test, is)
Th  a tet
think strip(abcdefgABCDEFG, azGy!7$B)
bcdefgACDEF
think strip(This is a test,is,1)
isiss
```

::: seealso
- [STRIPANSI()]
- [EDIT()]
- [TR()]
:::

