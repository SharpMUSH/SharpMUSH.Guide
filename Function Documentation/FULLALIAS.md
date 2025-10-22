# FULLALIAS()
`alias(<object>[, <new alias>])`
`fullalias(<object>)`

  alias() returns the first of `<object>`'s aliases. fullalias() returns all the aliases set for `<object>`. Note that, while any object can have an alias set, they are only meaningful for players and exits.

  With two arguments, alias() attempts to change the alias for `<object>` to `<new alias>`, as per @alias.

  Examples:
```
ex *Noltar/ALIAS
ALIAS [#7$v]: $;No;Nol;Noli;Nolt
say alias(*Noltar)
You say, "$"
say fullalias(*Noltar)
You say, "$;No;Nol;Noli;Nolt"
```


## See Also
- [fullname()]

