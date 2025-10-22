# UFUN3
  Example:
```
&testcmd Object=$test *: say ufun(testfun, %0); @emit %0
&testfun object=[strlen(%0)] [ucstr(%0)]
test string
Object says, "6 STRING"
string
```

  A user-defined function may be as complex as you want it to be, subject to limits on recursion depth, number of function invocations, or cpu time that may be configured in the MUSH.


## See Also
- [anonymous attributes]
- [udefault()]
- [get()]
- [ATTRIBUTES]
- [ulocal()]
- [pfun()]
- [attribute flags]
- [@include]

