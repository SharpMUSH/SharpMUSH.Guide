# ELEMENTS()
`elements(<list of words>, <list of numbers>[, <delim>[, <osep>]])`

  This function returns the words in `<list of words>` that are in the positions specified by `<list of numbers>`. The `<list of words>` are assumed to be space-separated, unless a `<delim>` is given. If `<osep>` is given, the matching words are separated by `<osep>`, otherwise by `<delim>`.

  If any of the `<list of numbers>` is negative, it counts backwards from the end of the list of words, with -1 being the last word, -2 the word before last, and so on.

  Examples:
```
say elements(Foo Ack Beep Moo Zot,2 4)
You say "Ack Moo"
```

    > say elements(Foof|Ack|Beep|Moo,3 1,|)
    You say "Beep|Foof"

    > say elements(The last word is foo, -1)
    You say "foo"


## See Also
- [extract()]
- [index()]
- [grab()]

