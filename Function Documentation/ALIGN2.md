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
# ALIGN3
  Examples:
```

    > &line me=align(<3 10 20$,([ljust(get(%0/sex),1,,1)]), name(%0),name(loc(%0)))
    > th iter(lwho(),u(line,##),%b,%r)
      (M) Walker     Tree
      (M) Ashen-Shug Apartment 306
          ar
      (F) Jane Doe   Nowhere
```

```
    > &line me=align(<3 10X 20X$,([ljust(get(%0/sex),1,,1)]), name(%0),name(loc(%0)))
    > th iter(lwho(),u(line,##),%b,%r)
      (M) Walker     Tree
      (M) Ashen-Shug Apartment 306
      (F) Jane Doe   Nowhere
```

        See '[align4]' for more examples.
# ALIGN4
```
    > &haiku me = Alignment function,%rIt justifies your writing,%rBut the words still suck.%rLuke

    > th [align(5 -40 5,,[repeat(-,40)]%r[u(haiku)]%r[repeat(-,40)],,%b,+)]

         +----------------------------------------+
         +          Alignment function,           +
         +       It justifies your writing,       +
         +       But the words still suck.        +
         +                  Luke                  +
         +----------------------------------------+
```

  See '[align5]' for more examples.
# ALIGN5
```
  > &dropcap me=%b_______%r|__%b%b%b__|%r%b%b%b|%b|%r%b%b%b|_|
  > &story me=%r'was the night before Christmas, when all through the house%rNot a creature was stirring, not even a mouse.%rThe stockings were hung by the chimney with care,%rIn hopes that St Nicholas soon would be there.
  > th align(9'(ch) 68, u(dropcap), u(story))

   _______
  |__   __| 'was the night before Christmas, when all through the house
     | |    Not a creature was stirring, not even a mouse.
     |_|    The stockings were hung by the chimney with care,
  In hopes that St Nicholas soon would be there.

  The dropcap 'T' will be in ANSI cyan-highlight, and merges with the 'story'
  column.
```

```
  > th align(>15 60,Walker,Staff & Developer,x,x)
  xxxxxxxxxWalkerxStaff & Developerxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

```
  > th align(>15 60$,Walker,Staff & Developer,x,x)
  xxxxxxxxxWalkerxStaff & Developer
```

