# ELOCK()
`elock(<object>[/<locktype>], <victim>)`

  elock() returns 1 if the `<victim>` would pass the @lock/`<locktype>` on `<object>`, and 0 if it would fail. Any locktype can be given, including user-defined "user:" @locks. If no `<locktype>` is given, it defaults to the Basic lock.

  You must be able to examine the lock, which means either that you must control `<object>`, it must be @set VISUAL, or the `<locktype>` lock must be @lset VISUAL.

  Examples:
```
@lock/drop Dancing Slippers=#0
think elock(Dancing Slippers/drop, Princess)
0
```

    > @lock/user:test map==*Fred|=*George
    > think elock(map/test,*Snape)
    0


## See Also
- [@lock]
- [locktypes]
- [testlock()]
- [lockfilter()]
- [@lset]

