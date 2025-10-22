# ITEMS()
`items(<list>, <delim>)`

  items() counts the number of items in a list using an arbitrary `<delim>`. Null items are counted, so:

`items(X|X,|)     => 2     (2 X items)`
`items(X||X,|)    => 3     (2 X items and 1 null item)`
`items(X X,%b)    => 2     (2 X items)`
`items(X%b%bX,%b) => 3     (2 X items and 1 null item)`
`items(,|)        => 1     (a single null item)`

   Another way to think about this is that items() counts the number of times `<delim>` appears in `<list>`, and adds 1.


## See Also
- [words()]

