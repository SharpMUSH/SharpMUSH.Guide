# secure()
`secure(<string>)`

  This function returns `<string>` with all "dangerous" characters replaced by spaces. Dangerous characters are<br>
    ( ) [ ] { } $ % , ^ ;<br>
  Note that the use of this function is very rarely needed.

  Marked list separators in `<string>` lose their mark, as with unmark(): see [list separators].


::: seealso
- [DECOMPOSE()]
- [ESCAPE()]
- [UNMARK()]
:::

