# UCSTR2()
`ucstr(<string>)`
`ucstr2(<string>)`

  Returns `<string>` with all letters converted to uppercase.

  If the MUSH is compiled with ICU Unicode support, ucstr2() does the same thing except the returned string might be a different length, and ansi colors and other markup are stripped.

  Example:
```
say ucstr(Foo BAR baz)
You say, "FOO BAR BAZ"
say ucstr2(grüßen)
You say, "GRÜSSEN
```


## See Also
- [lcstr()]
- [capstr()]

