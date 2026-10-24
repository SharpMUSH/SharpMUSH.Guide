# visible()
`visible(<object>, <victim>[/<attribute>])`

  If no attribute name is provided, this function returns 1 if `<object>` can see `<victim>` (`<victim>` is not DARK, or `<object>` has See_All), or 0, if it cannot. If an attribute name is given, the function returns 1 if `<object>` can see the attribute `<attribute>` on `<victim>`, or 0, if it cannot.

  If `<attribute>` does not exist, the function returns 0. If `<object>` or `<victim>` cannot be found, it returns a #-1 error.


::: seealso
- [CONTROLS()]
- [VISUAL]
:::

