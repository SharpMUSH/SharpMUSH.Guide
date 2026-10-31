# extract()
`extract(<list>[, <first>[, <length>[, <delimiter>[, <osep>]]]])`

  This function returns `<length>` elements of `<list>`, counting from the `<first>`th element. If `<length>` is not specified, the default is 1, so extract(`<list>`,3) acts like elements(`<list>`,3). If `<first>` is not specified, the default is the 1, so extract(`<list>`) acts like first(`<list>`).

  If `<first>` is negative, extract() will begin counting backwards from the end of `<list>`, so -1 starts at the last element, -2 the element before last, and so on.

  If `<length>` is negative, extract() will return up to and including the `<length>`th element from the right, so -1 will extract up to the last element, -2 up to the element before last, and so on.

  `<osep>`, as in TinyMUX, separates the elements returned; it defaults to `<delimiter>`.

  Examples:
```sharp
think extract(This is a test string,3,2)
a test
think extract(Skip the first and last elements, 2, -2)
the first and last
think extract(Get just the last three elements,-3, 3)
last three elements
think extract(a|b|c|d,2,2,|,-)
b-c
```


::: seealso
- [INDEX()]
- [ELEMENTS()]
- [GRAB()]
:::

