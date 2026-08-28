# FILTERQ()
`filterq(<register>, [<object>/]<attribute>, <list>[, <delimiter>[, <osep>[, <arg1>[, ... , <argN>]]]])`

  filterq() is filter() with reject-capture: it returns the elements of `<list>` for which `<attribute>` evaluates to exactly 1, osep-joined — and ALSO sets the q-register `<register>` to the elements that were filtered OUT (osep-joined; an empty string when nothing was rejected).

  The register is the FIRST argument, following the setq()/setr() convention, because filter()'s positions after `<osep>` already carry extra predicate arguments (available to each evaluation as %1, %2, ...) for PennMUSH compatibility. filterq() keeps those extra arguments, shifted one position to the right.

  Example:
```sharp
> &ISNUM me=isnum(%0)
> think Kept: [filterq(bad, ISNUM, 12 apples 7 pears)] / Dropped: %q<bad>
Kept: 12 7 / Dropped: apples pears
```


**See Also:**
- [filter()]
- [filterbool()]
- [every()]
- [some()]
- [setq()]

