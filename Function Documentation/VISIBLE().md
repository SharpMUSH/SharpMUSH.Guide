# VISIBLE()
`visible(<object>, <victim>[/<attribute>])`

  If no attribute name is provided, this function returns 1 if `<object>` can examine `<victim>`, or 0, if it cannot. If an attribute name is given, the function returns 1 if `<object>` can see the attribute `<attribute>` on `<victim>`, or 0, if it cannot.

  If `<object>`, `<victim>`, or `<attribute>` is invalid, the function returns 0.


## See Also
- [controls()]
- [VISUAL]

