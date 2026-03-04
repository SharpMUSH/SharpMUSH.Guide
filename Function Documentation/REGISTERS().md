# REGISTERS()
`registers([<pattern>[, <types>[, <osep>]]])`

  The registers() function returns a list of the names of all existing registers of the specified `<types>`. `<types>` is a space-separated list containing zero or more of:

    qregisters - registers set with setq(), setr() and similar functions<br>
    args       - %0-%9 arguments<br>
    iter       - itext() context from iter() or @dolist<br>
    switch     - stext() context from switch() or @switch<br>
    regexp     - regexp capture names

  If `<types>` is empty, all types of registers are included. If `<pattern>` is specified, only registers whose name matches `<pattern>` will be included. The results are separated by `<osep>`, which defaults to a single space.

  The list returned may contain duplicates (for instance, if %0 and %q0 both have a value, the list will include "0" twice), and is not sorted in any particular order.


**See Also:**
- [listq()]
- [setq()]
- [setr()]
- [letq()]
- [r()]
- [v()]
- [stext()]
- [itext()]

