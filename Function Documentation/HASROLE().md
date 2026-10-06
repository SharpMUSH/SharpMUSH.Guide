# HASROLE()
`hasrole(<object>, <role>)`

  Returns 1 if `<object>` holds the role named `<role>`, and 0 if not. `<role>` is the role's short name as @role/list shows it. An object holds `everyone`, the roles assigned to it, and, for a character linked to an account, the account's roles. A player that is not a guest also holds `player`, and #1 holds `god`.

  Example:
```sharp
think hasrole(*Ariel, moderator)
1
```


::: seealso
- [ROLES()]
- [PERMISSION()]
- [@role]
:::

