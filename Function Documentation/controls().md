# controls()
`controls(<object>, <victim>[/<attribute>])`

  With no `<attribute>`, this function returns 1 if `<object>` controls `<victim>`, or 0, if it does not. With an `<attribute>`, it will return 1 if `<object>` could successfully set `<attribute>` on `<victim>` (or alter `<attribute>`, if it already exists). If `<object>` or `<victim>` cannot be matched, it returns #-1 ARG1 NOT FOUND or #-1 ARG2 NOT FOUND, and an `<attribute>` that is not a valid name returns #-1 BAD ATTR NAME. You must control `<object>` or `<victim>`, or be See_All; otherwise it returns #-1 PERMISSION DENIED.


::: seealso
- [VISIBLE()]
- [CONTROL]
:::

