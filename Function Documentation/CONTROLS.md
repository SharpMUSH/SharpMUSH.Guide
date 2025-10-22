# CONTROLS()
`controls(<object>, <victim>[/<attribute>])`

  With no `<attribute>`, this function returns 1 if `<object>` controls `<victim>`, or 0, if it does not. With an `<attribute>`, it will return 1 if `<object>` could successfully set `<attribute>` on `<victim>` (or alter `<attribute>`, if it already exists). If one of the objects does not exist, it will return #-1 ARGN NOT FOUND (where N is the argument which is the invalid object). If `<attribute>` is not a valid attribute name, it will return #-1 BAD ATTR NAME. You must control `<object>` or `<victim>`, or have the See_All power, to use this function.


## See Also
- [visible()]
- [CONTROL]

