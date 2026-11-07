# cpad()
`cpad(<string>, <width>[, <fill>])`

  Centers `<string>` in a field `<width>` characters wide, as TinyMUX's cpad() does. The `<fill>` pattern, a space by default, repeats across the whole field from its first character, and `<string>` is laid over the middle, so the right side carries on the pattern rather than starting it again as center() does. A `<string>` wider than the field is returned whole, whatever `mux_justify` says.

  Examples:
```sharp
think cpad(a,5,-)
--a--
think cpad(foo,12,=+)
=+=+foo+=+=+
```

::: seealso
- [CENTER()]
- [LPAD()]
- [RPAD()]
:::

