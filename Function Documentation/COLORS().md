# COLORS()
`colors()`<br>
`colors(<wildcard>)`<br>
`colors(<colors>, <format>)`

  With no arguments, colors() returns an unsorted, space-separated list of colors that SharpMUSH knows the name of. You can use these colors in ansi(+`<colorname>`,text). The colors "xterm0" to "xterm255" are not included in the list, but can also be used in ansi().

  With one argument, returns an unsorted, space-separated list of colors that match the wildcard pattern `<wildcard>`.

  With two arguments, colors() returns information about specific colors. `<colors>` can be any string accepted by the ansi() function's first argument. `<format>` must be one of:

>   hex, x:      return a hexcode in the format #rrggbb.<br>
>   rgb, r:      return the RGB components as a list (0 0 0 - 255 255 255)<br>
>   xterm256, d: return the number of the xterm color closest to the given `<color>`.<br>
>   xterm256x,h: return the number of the xterm color in base 16.<br>
>   16color, c:  return the letter of the closest ANSI color code (possibly including 'h' for highlight fg colors).<br>
>   name:     return a list of names of all the colors exactly matching the given colors, or '#-1 NO MATCHING COLOR NAME' if there is no exact match with a named color.<br>
>   auto:     returns the colors in the same format(s) they were given in.

  It can be used for working out how certain colors will downgrade to people using clients which aren't fully color-capable.

  `<format>` can also include the word "styles", in which case all ANSI styling options (f, u, i and h) present in `<colors>` are included in the output.

  See [colors2] for examples.

**See Also:**
- [ansi()]
- [valid()]
- [colorstyle]

