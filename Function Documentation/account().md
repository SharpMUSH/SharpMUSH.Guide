# account()
`account(<player>[, <field>])`

  Returns the account `<player>` is linked to, or nothing when it is on no account. `<field>` is `id` (the default), the account's id, which never changes and is what to store or compare; or `name`, the account's username.

  Asking for the id needs the `players.view` permission, unless you are `<player>` or another character on the same account. The name is half of a login, so it always needs `players.view`. Otherwise it returns #-1 PERMISSION DENIED.

  Example:
```sharp
think account(*Ariel, name)
ariel-plays
think strmatch(account(*Ariel), account(*Brand))
1
```


::: seealso
- [ACCOUNTCHARS()]
- [accounts]
- [@account]
:::

