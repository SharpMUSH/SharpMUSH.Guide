# hasrole()
`hasrole(<object>, <role>[, <at least>])`

  Returns 1 if `<object>` holds the role named `<role>`, and 0 if not. `<role>` is the role's short name as @role/list shows it. An object holds `everyone`, the roles assigned to it, and, for a character linked to an account, the account's roles. A player that is not a guest also holds `player`, and #1 holds `god`.

  With `<at least>` true, it returns 1 if `<object>` holds `<role>` or any role of a higher priority. `<role>` may then also be a staff role the game does not have (`helper`, `moderator`, `guildmaster`, `architect`, `councilor` or `immortal`), at its built-in priority; any other unknown role is `#-1 NO SUCH ROLE`.

  Examples:
```sharp
think hasrole(*Ariel, moderator)
1
think hasrole(*Ariel, royalty, 1)
1
```

::: seealso
- [ROLES()]
- [PERMISSION()]
- [@role]
:::

