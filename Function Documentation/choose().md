# choose()
`choose(<items>, <weights>[, <delimiter>])`

  Picks one element of `<items>` at random. Each element's chance is its weight over the total of all weights. `<weights>` is a space-separated list of whole numbers, one for each element; a negative weight counts as 0. `<delimiter>` separates `<items>` and defaults to a space.

  If every weight is 0 the result is empty. If the two lists have different lengths the result is `#-1 LISTS MUST BE OF EQUAL SIZE`.

  Examples:
```sharp
think choose(red blue green, 0 1 0)
blue
think choose(red|blue|green, 5 1 0, |)
red
```

::: seealso
- [PICKRAND()]
- [RAND()]
- [DISTRIBUTE()]
:::

