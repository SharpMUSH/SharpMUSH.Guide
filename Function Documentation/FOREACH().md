# FOREACH()
`foreach([<object>/]<attribute>, <string>[, <start>[, <end>]])`

  This function is similar to map(), but instead of calling the given `<object>`/`<attribute>` for each word in a list, it is called for each character in `<string>`.

  For each character in `<string>`, `<object>`/`<attribute>` is called, with the character passed as %0, and its position in the string as %1 (the first character has position 0). The results are concatenated.

  If `<start>` is given, everything before the first occurrence of `<start>` is copied as-is, without being passed to the `<object>`/`<attribute>`. If `<end>` is given, everything after the first occurrence of `<end>` is copied as-is. The `<start>` and `<end>` characters themselves are not copied.

  See [foreach2] for examples.

