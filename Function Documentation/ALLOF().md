# ALLOF()
`allof(<expr>[, ... , <exprN>], <osep>)`

  Evaluates every `<expr>` argument (including side-effects) and returns the results of those which are true, in a list separated by `<osep>`. The output separator argument is required, and can be a string of any length (including an empty string; use %b for a space).

  The meaning of true or false depends on configuration options as explained in the 'BOOLEAN VALUES' help topics.
```
    > &s me=Bats are similar to Rats which are afraid of Cats
    > say allof(grab(v(s),rats),grab(v(s),mats),grab(v(s),bats),)
    You say, "Rats Bats"
```
```
    > say allof(#-1,#101,#2970,,#-3,0,#319,null(This Doesn't Count),|)
    You say, "#101|#2970|#319"
```
    > say allof(foo, 0, #-1, bar, baz,)
    You say, "foobarbaz"
```
```
    > say allof(foo, 0, #-1, bar, baz,%b)
    You say, "foo bar baz"
```

## See Also
- [firstof()]
- [BOOLEAN VALUES]
- [strallof()]
- [filter()]

