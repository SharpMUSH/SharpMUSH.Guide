# LALIGN()
`align(<widths>, <col>[, ... , <colN>[, <filler>[, <colsep>[, <rowsep>]]]])`
`lalign(<widths>, <colList>[, <delim>[, <filler>[, <colsep>[, <rowsep>]]]])`

  Creates columns of text, each column designated by `<col>` arguments. Each `<col>` is individually wrapped inside its own column, allowing for easy creation of book pages, newsletters, or the like. In lalign(), `<colList>` is a `<delim>`-separated list of the columns.

  `<widths>` is a space-separated list of column widths. '10 10 10' for the widths argument specifies that there are 3 columns, each 10 spaces wide. You can alter the behavior of a column in multiple ways. (Check [align2] for more details)

  `<filler>` is a single character that, if given, is the character used to fill empty columns and remaining spaces. `<colsep>`, if given, is inserted between every column, on every row. `<rowsep>`, if given, is inserted between every line. By default, `<filler>` and `<colsep>` are a space, and `<rowsep>` is a newline.

  Continued in '[align2]'

