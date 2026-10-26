# findable()
`findable(<object>, <victim>)`

  This function returns 1 if `<object>` can locate `<victim>`, or 0 if it cannot. If `<object>` or `<victim>` cannot be matched, it returns #-1 ARG1 NOT FOUND or #-1 ARG2 NOT FOUND, and an `<attribute>` that is not a valid name returns #-1 BAD ATTR NAME. You must control `<object>` or `<victim>`, or be See_All; otherwise it returns #-1 PERMISSION DENIED.

  The object executing the function needs to be see_all or control either `<object>` or `<victim>`.


::: seealso
- [locate()]
- [LOC()]
:::

