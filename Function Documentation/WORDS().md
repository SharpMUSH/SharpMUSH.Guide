# WORDS()
`words(<list>[, <delimiter>])`

  words() returns the number of elements in `<list>`. Elements of `<list>` are separated by `<delimiter>`, which defaults to a space.

  When the `<delimiter>` is a space, empty elements are not counted.

  Examples:
```sharp
think words(1 2%b%b3, %b)
3
```

    > think words(1|2||3, |)<br>
    4


**See Also:**
- [strlen()]
- [items()]

