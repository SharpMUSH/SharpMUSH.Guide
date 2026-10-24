# unmark()
`unmark(<string>)`

  Returns `<string>` with its marked list separators unmarked and its colour kept, so nothing in it splits a list on a marked delimiter. Use it on text a player typed before it goes into a list: a player can write `%*<|>` in a command's arguments as they can write colour. secure() and escape() unmark their text too. See [list separators].

  Examples:
```sharp
think words(a%*<|>b, %*<|>)
2
think words(unmark(a%*<|>b), %*<|>)
1
```


::: seealso
- [list separators]
- [SECURE()]
- [ESCAPE()]
- [DECOMPOSE()]
:::

