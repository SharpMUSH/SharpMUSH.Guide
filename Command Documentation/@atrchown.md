# @atrchown
# @attrchown
`@atrchown <object>/<attribute>=<new owner>`

This command changes the ownership of the attribute `<attribute>` on `<object>` to `<new owner>`. You can only @atrchown attributes which you can set. Wizards can @atrchown to any player, while mortals can only @atrchown attributes to themselves. Only players can own attributes; if `<new owner>` is not a player, `<new owner>`'s owner is used instead.

`<attribute>` may be a wildcard pattern (see [wildcards]). Then every attribute of `<object>`'s own that matches and that you can see changes owner, and each one is reported by name. PennMUSH takes one attribute at a time; patterns are a SharpMUSH addition.
```sharp
> @atrchown Widget/CMD`**=me
```
Output: one "Attribute <name> owner changed." line for each attribute under CMD on Widget.


::: seealso
- [@atrlock]
- [@chown]
- [OWNER()]
- [attributes]
- [NON-STANDARD ATTRIBUTES]
:::

