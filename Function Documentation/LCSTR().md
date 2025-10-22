# LCSTR()
# LCSTR2()
`lcstr(<string>)`
`lcstr2(<string>)`

  Returns `<string>` with all letters converted to lowercase.

  If the MUSH is compiled with ICU Unicode support, lcstr2() does the same thing except the returned string might be a different length, and ansi colors and other markup are stripped.

  Example:
```
say lcstr(Foo BAR bAz)
You say, "foo bar baz"
```


## See Also
- [capstr()]
- [ucstr()]

