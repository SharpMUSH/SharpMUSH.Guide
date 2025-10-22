# ANSI()
`ansi(<codes>[ ... <codesN>], <string>)`

  This allows you to mark up a string using ANSI terminal effects, 16-color codes, and 256 XTERM colors (specified as color names or hex values).

  The old-style `<ansi-codes>` are listed in "help ansi2".
  Each block of space-separated `<codes>` can be one or more old-style ANSI codes, as listed in "help ansi2", or a foreground and/or background color. Background colors are prefixed with a "/". Each color can be one of:

    * +`<colorname>` (for a list of valid names, see [colors()])
    * a hexcode, optionally in angle brackets (#000000, `<#ff0055>`, etc)
    * a list of red, green and blue values from 0-255, in angle brackets (`<0 0 0>`, `<255 0 85>`, etc)
    * a number from 0-255; this is the same as using "+xterm`<number>`", for Rhost compatability.

  For example, "ansi(+orange/#0000ff,Test)" would color "Test" in orange, on a blue background. In the event that your client does not support those colors, PennMUSH will downgrade the color to the closest fit that your client can understand.

  Codes are parsed from left to right so, with later codes overriding earlier ones. So, for example:
```
ansi(y /+green B <#ffffff>, test)
would show white text on an ANSI-blue background.
```

  See [ansi3] for more examples.

## See Also
- [ANSI]
- [COLOR]
- [@sockset]
- [colorstyle]
- [colors()]

