# UNIQUE()
`unique(<list>[, <sort type>[, <delim>[, <osep>]]])`

  unique() returns a copy of `<list>` with consecutive duplicate items removed. It does not sort the list. The optional `<sort type>` describes what type of data is in the list; see [sorting] for details. If no type is given, the elements are compared as strings. Elements of `<list>` are separated by `<delim>`, which defaults to a space. Each element of the output is separated by `<osep>`, which defaults to `<delim>`.

  Examples:
```
think unique(a b b c b)
a b c b
think unique(1 2 2.0 3, f)
1 2 3
think unique(1|2|3|3, n, |, _)
1_2_3
```


## See Also
- [setunion()]
- [sort()]

