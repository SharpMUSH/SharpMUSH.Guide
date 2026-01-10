# COLORSTYLE
`SOCKSET colorstyle=<value>`
`@SOCKSET [me|<descriptor>]=colorstyle,<value>`

You can override the color format you receive from PennMUSH. Normally, PennMUSH tries to guess what your client is capable of through telnet negotiation and your player flags. @sockset lets you inform PennMUSH that your client can support more colors than expected.

Colorstyle options are:

- plain: Plain text. No markup whatsoever.
- hilite: You only receive hilite text. No colors, just ansi-hilite.
- 16color: You receive hilite text and the ANSI 16 colors.
- xterm256: You receive xterm-style 256 colors for text and background.
- auto: go back to what PennMUSH determined was your client's capabilities.

In the event that your client receives a color that it is unable to display, PennMUSH will attempt to find a close match that can fit your client's capabilities.


## See Also
- [ANSI]
- [COLOR]
- [XTERM256]
- [@sockset]

