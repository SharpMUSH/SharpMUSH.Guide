# FILTERBOOL()
`filter([<obj>/]<attr>, <list>[, <delimiter>[, <osep>[, ..., <argN>]]])`
`filterbool([<obj>]/<attr>, <list>[, <delimiter>[, <osep>[, ..., <argN>]]])`

  These functions returns the elements of `<list>` for which a user-defined function evaluates to "1" (for filter()), or to a boolean true value (for filterbool()). That function is specified by the first argument (just as with the ufun() function), and the element of the list being tested is passed to that user-defined function as %0. Up to 29 further `<arg>`s can be specified, and will be available in the function as v(1) to v(30).

  `<delimiter>` defaults to a space, and `<osep>` defaults to `<delimiter>`.

  filter(`<obj>`/`<attr>`, `<list>`) is roughly equivalent to squish(iter(`<list>`, switch(ufun(`<obj>`/`<attr>`, %i0),1,%i0,))) though the filter() version is much more efficient.

  Example:
```
&IS_ODD test=mod(%0,2)
say filter(test/is_odd, 1 2 3 4 5 6)
You say, "1 3 5"
```


## See Also
- [anonymous attributes]
- [firstof()]
- [allof()]
- [lockfilter()]
- [boolean values]

