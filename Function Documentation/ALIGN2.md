# ALIGN2
  You can modify column behavior within align(). The basic format is:

  [justification]Width[options][(ansi)]

  Justification: Placing one of these characters before the width alters the spacing for this column (e.g: <30). Defaults to < (left-justify).
    `< Left-justify       - Center-justify        >` Right-justify
    _ Full-justify       = Paragraph-justify

  Other options: Adding these after the width will alter the column's behaviour in some situtations
    `.` Repeat for as long as there is non-repeating text in another column.
    \` When this column runs out of text, merge with the column to the left
    `'` When this column runs out of text, merge with the column to the right
    `$` nofill: Don't use filler after the text. If this is combined with merge-left, the column to its left inherits the 'nofill' when merged.
    `x` Truncate each (%r-separated) row instead of wrapping at the colwidth
    `X` Truncate the entire column at the end of the first row instead of wrapping
    `#` Don't add a `<colsep>` after this column. If combined with merge-left, the column to its left inherits this when merged.

  Ansi: Place ansi characters (as defined in [ansi()]) within ()s to define a column's ansi markup.

  See '[align3]' for examples.

## See Also
- [center()]
- [ljust()]
- [rjust()]
- [table()]

