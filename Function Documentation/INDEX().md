# INDEX()
`index(<list>, <character>, <first>, <length>)`

  This function is similar to extract(), except that it requires four arguments, while extract() uses defaults for its arguments if they aren't given. The function returns `<length>` items starting from the `<first>` position. Trailing spaces are trimmed.

  Examples:
```
say index(Cup of Tea | Mug of Beer | Glass of Wine, |, 2, 1)
You say, "Mug of Beer"
```

    > say index(%rtoy boat^%rblue tribble^%rcute doll^%rred ball,^,2,2)
    You say, "
    blue tribble^
    cute doll"


## See Also
- [extract()]
- [elements()]
- [grab()]

