# GRAPHEMES()
`graphemes(<string>[, <output-separator>])`

  Inserts the output separator between whole grapheme clusters, retaining ANSI, HTML, and custom markup. The default separator is one space. Any separator text is accepted, including multiple characters and markup; an explicitly empty separator returns the original text with its markup. Empty input returns empty output. No separator is inserted before the first or after the last cluster, and existing spaces in the input remain clusters. There is no escaping or quoting of clusters containing the separator; choose a separator suitable for your data.

  Examples: `graphemes(é界,|)` returns `é|界`; `graphemes(é界,)` returns `é界`.

  All three Unicode functions take normally evaluated arguments and use the usual function invocation and recursion limits. The evaluator permits at most 5,242,880 UTF-16 code units per function result. GRAPHEMES checks the expanded length before constructing its output and returns `#-1 OUTPUT EXCEEDED MAXIMUM SIZE` if it would exceed that ceiling. Cluster length itself has no separate fixed limit. Text is not normalized; malformed UTF-16 is retained under the library's segmentation policy.

**See Also:**
- [displaywidth()]
- [graphemecount()]
- [flip()]


