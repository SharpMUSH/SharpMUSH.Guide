# PROMPT_NEWLINES
`PROMPT_NEWLINES [1|0]`

This socket-level command is used to indicate whether a newline should be sent after the telnet GOAHEAD code issued by @prompt/prompt() to telnet-capable clients. By default, in order to maximize portability, newlines are sent.

Some clients, like TinyFugue, are smart enough to interpret GOAHEAD and treat prompts specially by putting them into their input window. These clients do not require the newline, and sending the newline results in a blank line in their output window. The 'PROMPT_NEWLINES 0' command can be used to disable the newline and is recommended for users with these clients.


## See Also
- [@prompt]
- [prompt()]
- [terminfo()]
- [@sockset]

