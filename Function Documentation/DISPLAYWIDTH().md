# DISPLAYWIDTH()
`displaywidth(<string>)`

  Returns the terminal columns occupied by the text, ignoring its markup. A wide CJK character occupies two columns. Combining marks add no columns; joined emoji are measured as whole clusters by MarkupString. Empty text returns 0. Control characters such as tabs and newlines occupy no columns. This is the same as `strlen(<string>,0)`; plain [strlen()] also counts each control character as one.

  A display column differs from a Unicode scalar (one code point), a grapheme cluster (a base plus its combining marks, or a joined emoji sequence), and a UTF-16 code unit (the indexing unit used by the .NET string API). Use [graphemecount()] and [graphemes()] for cluster operations. These functions do not normalize or repair text.

  Examples: `displaywidth(界)` returns `2`; `graphemecount(界)` returns `1`.

**See Also:**
- [strlen()]
- [graphemecount()]
- [graphemes()]


