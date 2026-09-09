# STRDISTANCE()

`strdistance(<source>, <target>)`

  Returns the minimum number of grapheme insertions, deletions, or substitutions needed to change source into target. Each edit costs one; transposing two graphemes costs two. Comparison is ordinal and case-sensitive. Markup is ignored, and Unicode normalization is not applied: composed `é` and decomposed `é` each contain one grapheme but differ from each other. No optional flags are supported.

  Identical inputs return zero. When one input is empty, the result is the other input's grapheme count. These cases remain subject to the same bounds: each input may contain at most 65,536 UTF-16 code units and 4,096 graphemes, and the product of the two grapheme counts may not exceed 4,000,000. Exceeding any bound returns `#-1 STRING DISTANCE WORK LIMIT EXCEEDED`. The work check happens before allocating comparison rows; row storage grows with the shorter input.

  Use the result to offer a spelling suggestion for a help topic or keyword and let the player choose it. Do not use approximate matches to select targets for destructive commands. Existing `suggest()` keeps its case-folded, UTF-16-based ranking; this function does not change that behavior.

  Examples:

```sharp
strdistance(kitten,sitting)
strdistance(ansi(r,界😀),界😺)
strdistance(,é😀)
```

  These return `3`, `1`, and `2`, respectively.

**See Also:**
- [suggest()]
- [graphemecount()]
- [graphemes()]


