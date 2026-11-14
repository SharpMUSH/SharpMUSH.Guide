# before()
`before(<string1>[, <string2>])`

  Returns the portion of `<string1>` that occurs before `<string2>`. If `<string2>` isn't in `<string1>`, `<string1>` is returned. This is case-sensitive. An empty `<string2>` is a space. Without `<string2>`, as TinyMUX takes it, the spaces at both ends of `<string1>` are trimmed first.

```sharp
think before(%b%babc def)
abc
```

  Examples:
```sharp
say before(foo bar baz,bar)
You say, "foo"
say before(foo bar baz,r)
You say, "foo ba"
say before(foo bar baz,a)
You say, "foo b"
```


::: seealso
- [AFTER()]
- [FIRST()]
:::

