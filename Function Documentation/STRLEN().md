# STRLEN()
`strlen(<string>)`

  Returns terminal display columns, ignoring markup. Wide CJK characters count as two columns and combining marks add no columns. This existing behavior is unchanged; [displaywidth()] names the unit explicitly. Use [graphemecount()] to count whole grapheme clusters.

  Example:
```sharp
say strlen(foobar)
You say, "6"
```


**See Also:**
- [words()]
- [strfirstof()]

