# wipe()
`wipe(<object>[/<attribute pattern>])`

  This function is equivalent to @wipe, and attempts to wipe all the attributes on `<object>` whose names match `<attribute pattern>`, or "**" (every attribute, including those inside attribute trees) if no pattern is given. It returns nothing. Like @wipe, this function will destroy entire attribute trees; to safely remove a single attribute, use attrib_set() instead.

  If you do not control `<object>`, it tells you why, as @wipe does, and returns `#-1 PERMISSION DENIED: NOT CONTROLLED`.


::: seealso
- [@wipe]
- [ATTRIB_SET()]
- [SET()]
:::

