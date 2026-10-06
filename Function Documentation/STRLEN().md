# STRLEN()
`strlen(<string>[, <count controls>])`

  Returns terminal display columns, ignoring markup. Wide CJK characters count as two columns and combining marks add no columns. Use [GRAPHEMECOUNT()] to count whole grapheme clusters.

  By default each control character, such as a tab (`%t`) or a newline (`%r`), counts as one, as it does in PennMUSH. If `<count controls>` is false, control characters count as zero, because they take up no columns. That matches [DISPLAYWIDTH()]. If `<count controls>` is true or omitted, the default applies.

  Examples:
```sharp
say strlen(foobar)
You say, "6"
say strlen(a%tb)
You say, "3"
say strlen(a%tb,0)
You say, "2"
```


::: seealso
- [WORDS()]
- [STRFIRSTOF()]
:::

