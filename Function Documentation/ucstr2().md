# ucstr()
# ucstr2()
`ucstr(<string>)`<br>
`ucstr2(<string>)`

  Returns `<string>` with all letters converted to uppercase.

  If the MUSH is compiled with ICU Unicode support, ucstr2() does the same thing except the returned string might be a different length, and ansi colors and other markup are stripped.

  Example:
```sharp
say ucstr(Foo BAR baz)
You say, "FOO BAR BAZ"
say ucstr2(gr[chr(252)]n)
```

  The second example says "GRUN" with an umlaut on the U; `chr(252)` is u with an umlaut.


::: seealso
- [LCSTR()]
- [CAPSTR()]
:::

