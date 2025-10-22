# say
`say[/noeval] <message>`
`"<message>`

Says `<message>` out loud. The message will be enclosed in double-quotes. A single double-quote is the abbreviation for this common command. If the `/noeval` switch is given, `<message>` will not be evaluated.

If you have a SPEECHMOD attribute set, it will be evaluated with `<message>` passed as %0 and " (a double-quote) passed as %1. The result is shown instead of `<message>`, as long as it evaluates to a non-empty string.

If `<message>` begins with a double-quote and the chat_strip_quote @config option is on, the leading " will be stripped.


## See Also
- [pose]
- [whisper]
- [@speechmod]
- [@emit]
- [page]

