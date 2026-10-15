# config()
`config([<option>])`

  With no arguments, config() returns a list of config option names. If `<option>` is given, config() returns the value of the given option Boolean configuration options will return values of "Yes" or "No". An option that maps names to lists of words, such as `command_aliases`, returns each entry as `<name>=<words>`, the entries separated by `|`.

  Example:
```sharp
think config(money_singular)
Penny
think config(command_aliases)
@ATRCHOWN=@attrchown|@ATRLOCK=@attrlock|@EDIT=@gedit|...
```


