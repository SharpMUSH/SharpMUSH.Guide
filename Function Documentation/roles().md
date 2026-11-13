# roles()
`roles(<object>[, <category>])`

  Returns the short names of the roles `<object>` holds, its own and its account's, highest priority first, with `everyone` last. With `<category>`, only the roles in that category.

  A player holding `game.hide.roles` hides its roles from players ranked below it, and they get only `everyone`; hasrole() still answers them. See [roles].

  Example:
```sharp
think roles(*Ariel)
moderator player everyone
think roles(*Ariel,Staff)
moderator
```


::: seealso
- [HASROLE()]
- [PERMISSION()]
- [@role]
:::

