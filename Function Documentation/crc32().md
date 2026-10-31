# crc32()
`crc32([<string1>[, ... <stringN>]])`

  Returns the CRC-32 checksum of the strings as one unsigned number. The strings are checked one after another, so crc32(ab, c) is the same as crc32(abc). Markup is left out, and the text is read as UTF-8.

  Examples:
```sharp
think crc32(MUX)
629126998
think crc32(M, UX)
629126998
```

::: seealso
- [DIGEST()]
:::

