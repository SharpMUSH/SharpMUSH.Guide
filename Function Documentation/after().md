# after()
`after(<string1>[, <string2>])`

  Returns the portion of `<string1>` that occurs after `<string2>`. If `<string2>` isn't in `<string1>`, the function returns nothing. This is case-sensitive. An empty `<string2>` is a space. Without `<string2>`, as TinyMUX takes it, the spaces at both ends of `<string1>` are trimmed first.

```sharp
think after(%b%babc def ghi)
def ghi
```

  Examples:
```sharp
> say after(foo bar baz,bar)
You say, " baz"
```
```sharp
> say after(foo bar baz,ba)
You say, "r baz"
```

::: seealso
- [BEFORE()]
- [REST()]
:::

