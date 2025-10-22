# TEXTFILE()
# TEXTENTRIES()
# TEXTSEARCH()
# DYNHELP()
`textfile(<type>, <entry>)`
`textentries(<type>, <pattern>[, <osep>])`
`textsearch(<type>, <pattern>[, <osep>])`

  textfile() returns the text of entries from cached text files (such as "help", "news", "events", etc.) All whitespace and newlines are included, so you may want to edit %r's and squish the result if you plan to use the text as a list of words rather than a display.

  textentries() returns any topic names which match the wildcard pattern `<pattern>`, with topic names separated by `<osep>`. These are the same topic names returned from "help `<pattern>`".

  textsearch() returns the names of all topics whose contents matches the given `<pattern>`, the same as "help/search `<pattern>`", with topic names separated by `<osep>`.

  Example:
```
say textentries(help, ?who())
You say, "CWHO() LWHO() MWHO() NWHO() XWHO() ZWHO()"
```

    > say textsearch(help, pronouns, |)
    You say, "1.6.0P0|GENDER|SEX"

    > say textfile(help, ln\(\))
    You say, "  ln(`<number>`)

      Returns the natural log of `<number>`.


## See Also
- [log()]
    "

## See Also
- [WILDCARDS]

