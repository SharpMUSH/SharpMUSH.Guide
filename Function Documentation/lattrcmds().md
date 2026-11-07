# lattrcmds()
`lattrcmds(<object>[/<pattern>])`

  Returns the names of the attributes on `<object>` that hold a $-command. `<pattern>` limits which attributes are looked at, as in lattr(). Only attributes you can read are listed.

  Example:
```sharp
&CMD.HELLO me=$hello:think Hello!
&NOTE me=Just text.
think lattrcmds(me/CMD.*)
CMD.HELLO
```

::: seealso
- [LCMDS()]
- [LATTR()]
- [user-defined commands]
:::

