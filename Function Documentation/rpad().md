# rpad()
`rpad(<string>, <width>[, <fill>])`

  Puts `<string>` at the right of a field `<width>` characters wide, as TinyMUX's rpad() does. The `<fill>` pattern, a space by default, repeats from the first character of the field. A `<string>` wider than the field is returned whole, whatever `mux_justify` says.

  Examples:
```sharp
think -[rpad(foo,6)]-
-   foo-
think =[rpad(bar,5,.)]=
=..bar=
```

::: seealso
- [RJUST()]
- [LPAD()]
- [CPAD()]
:::

