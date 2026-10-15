# graphemecount()
`graphemecount(<string>)`

  Returns the number of extended grapheme clusters in the text, ignoring markup. Combining accents, emoji modifiers, joined emoji, and paired flag indicators remain with their cluster. Empty text returns 0. Segmentation follows the released MarkupString library and the runtime Unicode rules, so the original composed or decomposed spelling is retained.

  Examples: `graphemecount(e[chr(769)])` returns `1`, an e and its combining accent; `graphemecount([chr(128105)][chr(8205)][chr(128105)][chr(8205)][chr(128103)][chr(8205)][chr(128102)])` returns `1`, a family emoji built from four emoji and three zero-width joiners.

::: seealso
- [DISPLAYWIDTH()]
- [GRAPHEMES()]
:::


