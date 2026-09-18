# TEXTFILE()
# TEXTENTRIES()
# TEXTSEARCH()
# DYNHELP()
`textfile(<type>, <entry>)`<br>
`textentries(<type>[, <osep>])`<br>
`textsearch(<type>, <pattern>[, <osep>])`

  textfile() returns the text of entries from cached text files (such as "help", "news", "events", etc.) All whitespace and newlines are included, so you may want to edit %r's and squish the result if you plan to use the text as a list of words rather than a display.

  textentries() returns every topic name in `<type>`, separated by `<osep>` (a space by default). PennMUSH takes a required `<pattern>` here and returns only the topics matching it; SharpMUSH does not, so filter the result yourself, or use textsearch() where you want matching by content.

  textsearch() returns the names of all topics whose contents matches the given `<pattern>`, the same as "help/search `<pattern>`", with topic names separated by `<osep>`.

  Example:
```sharp
say textentries(help, ?who())
You say, "CWHO() LWHO() MWHO() NWHO() XWHO() ZWHO()"
```

    > say textsearch(help, pronouns, |)<br>
    You say, "1.6.0P0|GENDER|SEX"

    > say textfile(help, ln\(\))<br>
    You say, "  ln(`<number>`)

      Returns the natural log of `<number>`.


**See Also:**
- [log()]
    "

**See Also:**
- [WILDCARDS]

