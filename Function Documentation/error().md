# error()
`error([<object>])`

  Returns the message a command that matches nothing gets. RhostMUSH softcode calls it to answer a player who may not use a command as if the command did not exist. `<object>` is accepted and changes nothing.

  Example:
```sharp
say error()
You say, "Huh?  (Type "help" for help.)"
```

::: seealso
- [HUH_COMMAND]
:::

