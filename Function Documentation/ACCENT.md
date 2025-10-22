# ACCENT()
`accent(<string>, <template>)`

  The accent() function will return `<string>`, with characters in it possibly changed to accented ones according to `<template>`. Both arguments must be the same size.

  Whether or not the resulting string is actually displayed correctly is client-dependent. Some OSes uses different character sets than the one assumed (Unicode and ISO 8859-1), and some clients strip these 8-bit characters.

  For each character in `<string>`, the corresponding character of `<template>` is checked according to the table in [accents], and a replacement done. If either the current `<string>` or `<template>` characters aren't in the table, the `<string>` character is passed through unchanged.

  See [accent2] for some examples.


## See Also
- [stripaccents()]
- [NOACCENTS]
- [@nameaccent]
- [accname()]
- [ACCENTS]

