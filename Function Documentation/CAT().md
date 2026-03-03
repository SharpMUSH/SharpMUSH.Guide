# CAT()
# STRCAT()
`cat(<string>[, ... , <stringN>])`
`strcat(<string1>[, ... , <stringN>])`

  These functions concatenate multiple strings together. cat() adds a space between each string; strcat() does not.

  Example:
```sharp
say cat(foo bar, baz blech)
You say, "foo bar baz blech"
say strcat(foo bar, baz blech)
You say, "foo barbaz blech"
```

