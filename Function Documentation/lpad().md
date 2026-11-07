# lpad()
`lpad(<string>, <width>[, <fill>])`

  Puts `<string>` at the left of a field `<width>` characters wide, as TinyMUX's lpad() does. The `<fill>` pattern, a space by default, repeats across the whole field from its first character, so the fill after `<string>` carries on from where the pattern is at that column rather than starting again as ljust() does. A `<string>` wider than the field is returned whole, whatever `mux_justify` says.

  Examples:
```sharp
think -[lpad(foo,6)]-
-foo   -
think lpad(foo,12,=+)
foo+=+=+=+=+
```

::: seealso
- [LJUST()]
- [RPAD()]
- [CPAD()]
:::

