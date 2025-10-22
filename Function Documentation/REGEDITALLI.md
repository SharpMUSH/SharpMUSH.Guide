# REGEDITALLI()
`regedit(<string>, <regexp>, <replace>[, ... , <regexpN>, <replaceN>])`
`regediti(<string>, <regexp>, <replace>[, ... , <regexpN>, <replaceN>])`
`regeditall(<string>, <regexp>, <replace>[, ... , <regexpN>, <replaceN>])`
`regeditalli(<string>, <regexp>, <replace>[, ... , <regexpN>, <replaceN>])`

  These functions edit `<string>`, replacing the part of the string which matches the regular expression `<regexp>` with the accompanying `<replace>`. In `<replace>`, the string "$`<number>`" is expanded during evaluation to the `<number>`th sub-expression, with $0 being the entire matched section. If you use named sub-expressions (?P`<name>`subexpr), they are referred to with "$`<name>`". Note that, with named sub-expressions, the "<>" are literal.

  regedit() only replaces the first match, while regeditall() replaces all matches. The versions ending in i are case insensitive. The `<replace>` argument is evaluated once for each match, allowing for more complex transformations than is possible with straight replacement.

  Examples:
```
say regedit(this test is the best string, (?P<char>.)est, $<char>rash)
You say "this trash is the best string"
say regeditall(this test is the best string, (.)est, capstr($1)rash)
You say "this Trash is the Brash string"
```


## See Also
- [edit()]
- [@edit]
- [regmatch()]
- [regrab()]

