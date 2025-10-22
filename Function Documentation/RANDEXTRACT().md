# RANDEXTRACT()
`randextract(<list>[, <count>[, <delim>[, <type>[, <osep>]]]])`

  Returns up to `<count>` random elements from the `<delim>`-separated `<list>`. The following `<type>`s are available:
    R - Grab `<count>` elements from `<list>` at random, but don't duplicate any elements
    L - Grab `<count>` elements from `<list>`, in order, starting at a random element
    D - Grab `<count>` elements from `<list>` at random, with duplicates allowed

  randextract() may return less than `<count>` elements for `<type>`s L and R, depending on the random element chosen and the length of `<list>`. Elements of the returned list are separated by `<osep>`, which defaults to `<delim>`. `<delim>` defaults to a single space, `<count>` defaults to 1, and `<type>` defaults to R.

  Examples:
```
say randextract(this is a test,3)
You say "this test a"
say randextract(this@is@a@test,3,@)
You say "this@a@test"
say randextract(this is a test,3,,L,*)
You say "this*is*a"
say randextract(this is a test,6,,D)
You say, "this test is this is is"
```


## See Also
- [rand()]
- [randword()]

