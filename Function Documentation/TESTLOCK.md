# TESTLOCK()
`testlock(<key>, <victim>)`

  testlock() returns 1 if the `<victim>` would pass the lock defined in `<key>` as run by the caller, and 0 if it would fail.

  testlock() evaluates the lock from the caller's perspective.

  Example:
```
think testlock(TYPE^PLAYER&FLAG^WIZARD, *Gandalf)
1
think testlock(TYPE^PLAYER&FLAG^WIZARD, *Bilbo)
0
Note: You can escape the first character of <key> using double back slashes, for example, to check if a player has an attribute named +FOO with a value of BAR
think testlock(\\+FOO:BAR,*Walker)
0
```



## See Also
- [@lock]
- [lock()]
- [elock()]
- [lockfilter()]
- [locktypes]

