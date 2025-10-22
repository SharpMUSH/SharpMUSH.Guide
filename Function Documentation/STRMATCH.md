# STRMATCH()
`strmatch(<string>, <pattern>[, <register list>])`

  This function matches `<pattern>` against the entire `<string>`. It returns 1 if it matches and 0 if it doesn't. It is not case-sensitive, and `<pattern>` may contain wildcards.

  If `<register list>` is given, there is a side-effect: Wildcards and patterns are stored in q-registers, in the order they are given. `<register list>` is a space-separated list of register names.

  Examples:
```
say strmatch(Foo bar baz, *Baz)
You say, "1"
```

    > say strmatch(Foo bar baz,*Foo)
    You say, "0"

    > say strmatch(Foo bar baz,*o*a*)
    You say, "1"

    > say strmatch(foo:bar,*:*,0 1)/%q0/%q1
    You say, "1/foo/bar"

    > say strmatch(foo:bar=baz,*:*=*,L1 L2 right)/%q`<L1>`/%q`<L2>`/%q`<right>`
    You say, "1/foo/bar/baz"


## See Also
- [comp()]
- [match()]
- [setq()]
- [r()]
- [WILDCARDS]

