# TABLE()
`table(<list>[, <field width>[, <line length>[, <delimiter>[, <osep>]]]])`

  This function returns the elements of `<list>` in a tabular format. All other parameters are optional. `<field width>` specifies how wide each table entry is allowed to be, and defaults to 10. If `<field width>` begins with a "`<", it is left-aligned. ">`" makes it right-aligned, and "-" makes it centered. Elements longer than `<field width>` are truncated to fit.

  `<line length>` is how wide a table row can be, and defaults to 78. `<delimiter>` is the delimiter used in `<list>`, and defaults to a space. `<osep>` is a single character to be used between entries in the table, and also defaults to a space.

  Examples:
```
think table(a b areallylongone d)
a          b          areallylon d
```

    > think table(the quick brown fox, 10, 25, , |)
    the       |quick
    brown     |fox


## See Also
- [align()]

