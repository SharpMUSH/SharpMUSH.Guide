# PERMISSION()
`permission(<object>, <permission>)`

  Returns 1 if `<object>` holds `<permission>`, and 0 if not. The answer is the same one the game and the web portal use when that object tries the action, so softcode can check ahead of time instead of keeping its own list of staff. `<permission>` may be built in or one the game defined with `@permission/define`, such as `scene.close`. Any other name returns `#-1 NO SUCH PERMISSION`; @permission lists them all.

  Example:
```sharp
think permission(me, wiki.delete)
0
```


::: seealso
- [HASROLE()]
- [roles]
- [@role]
:::

