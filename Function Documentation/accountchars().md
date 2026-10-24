# accountchars()
`accountchars(<player>)`

  Returns the objids of every character on the same account as `<player>`, lowest dbref first, `<player>` included. A character on no account returns only itself.

  It needs the `players.view` permission, unless you are `<player>` or another character on the same account, so a player can list their own characters.

  Example:
```sharp
think iter(accountchars(%#), name(%i0))
Ariel Brand
```


::: seealso
- [ACCOUNT()]
- [accounts]
:::

