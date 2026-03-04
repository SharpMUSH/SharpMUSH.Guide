# EDIT()
`edit(<string>, <search>, <replace>[, ... , <searchN>, <replaceN>])`

  For each given `<search>` and `<replace>` pair, edit() replaces all occurrences of `<search>` in `<string>` with the corresponding `<replace>`.

  If `<search>` is a caret (^), `<replace>` is prepended.<br>
  If `<search>` is a dollar sign ($), `<replace>` is appended.<br>
  If `<search>` is an empty string, `<replace>` is inserted between every character, and before the first and after the last.<br>
  If `<replace>` is an empty string, `<search>` is deleted from the string.

  Example:
```sharp
say edit(this is a test,^,I think%b,$,.,a test,an exam)
You say "I think this is an exam."
```

  edit() can not replace a literal single ^ or $. Use regedit() for that.


**See Also:**
- [@edit]
- [regedit()]

