# account()
`account(<player>[, <field>])`

  Returns the account `<player>` is linked to, or nothing when it is on no account. `<field>` is `ref` (the default), the account's `#acct:<key>`, which never changes, is what to store or compare, and holds the account's attributes (see [accounts attributes]); or `name`, the account's username.

  Asking for the ref needs the `players.view` permission, unless you are `<player>` or another character on the same account. The name is half of a login, so it always needs `players.view`. Otherwise it returns #-1 PERMISSION DENIED.

  Example:
```sharp
think account(*Ariel, name)
ariel-plays
think account(*Ariel)
#acct:3
think strmatch(account(*Ariel), account(*Brand))
1
```


::: seealso
- [ACCOUNTCHARS()]
- [accounts]
- [@account]
:::

