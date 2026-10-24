# iname()
`iname(<object>)`

  iname() returns the name of `<object>` as seen from inside it: its NAMEFORMAT evaluated with %0 the object's dbref and %1 its accented name, or the accented name when it has no NAMEFORMAT. You must control `<object>`, be See_All, or be inside it; otherwise it returns #-1 PERMISSION DENIED.


::: seealso
- [@nameformat]
- [@nameaccent]
- [NAME()]
- [FULLNAME()]
- [ACCNAME()]
:::

