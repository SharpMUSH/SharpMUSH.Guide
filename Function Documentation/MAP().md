# MAP()
`map([<object>/]<attribute>, <list>[, <delim>[, <osep>]])`

  This function works much like ITER(). The given `<attribute>` is evaluated once for each element of `<list>`, and the results of the evaluations are returned. For each evaluation, the current list element is passed to the attribute as %0, and its position in the list as %1. Elements of `<list>` are separated by `<delim>`, or a space if none is given, and the results are returned separated by `<osep>`, if given, or the delimiter otherwise.

  This is roughly equivilent to, though slightly more efficient than:
`iter(<list>, ulambda(<object>/<attribute>, %i0, inum(0)), <delim>, <osep>)`

  Examples:
```
&times_two me=mul(%0,2)
```

    > say map(times_two, 5 4 3 2 1)
    You say, "10 8 6 4 2"

    > say map(times_two,1;2;3;4;5,;)
    You say, "2;4;6;8;10"


## See Also
- [anonymous attributes]
- [iter()]
- [@dolist]

