# GRAPHEMECOUNT()
`graphemecount(<string>)`

  Returns the number of extended grapheme clusters in the text, ignoring markup. Combining accents, emoji modifiers, joined emoji, and paired flag indicators remain with their cluster. Empty text returns 0. Segmentation follows the released MarkupString library and the runtime Unicode rules, so the original composed or decomposed spelling is retained.

  Examples: `graphemecount(é)` returns `1`; `graphemecount(👩‍👩‍👧‍👦)` returns `1`.

**See Also:**
- [displaywidth()]
- [graphemes()]


