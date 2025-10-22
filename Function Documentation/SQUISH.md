# SQUISH()
`squish(<string>[, <character>])`

  This function removes the leading and trailing `<character>`s from `<string>`, and condenses all inter-word `<character>`s to a single`<character>`. If no character is given, a space is used.

  Examples:
```

    > say squish(%b%bfoo bar%b%bbaz blech%b%b%beek%b)
    You say, "foo bar baz blech eek"
    > say squish(||a|| b|c|d|, |)
    You say, "a| b|c|d"
```


## See Also
- [trim()]

