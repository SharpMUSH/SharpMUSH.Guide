# remove()
`remove(<list>, <words>[, <delimiter>[, <osep>]])`

  This function removes the first occurrence of every word in the list `<words>` from `<list>`, and returns the resulting `<list>`. It is case sensitive.

  Elements of `<list>` and `<words>` are both separated by `<delimiter>`, which defaults to a space. `<osep>`, as in TinyMUX, separates the elements of the result; it defaults to `<delimiter>`.

  Examples:
```sharp
think remove(this is a test, is)
this a test
think remove(a|b|c, b, |, -)
a-c
```


::: seealso
- [INSERT()]
- [LDELETE()]
- [SETDIFF()]
:::

