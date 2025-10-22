# ANDFLAGS()
# ANDLFLAGS()
`andflags(<object>, <string of flag letters>)`
`andlflags(<object>, <list of flag names>)`

  These functions return 1 if `<object>` has all of the given flags, and 0 if it does not. andflags() takes a string of single flag letters, while andlflags() takes a space-separated list of flag names. In both cases, a ! before the flag means "not flag".

  If there is a syntax error like a ! without a following flag, '#-1 INVALID FLAG' is returned. Unknown flags are treated as being not set.

  Example: Check to see if %# is set Wizard and Dark, but not Ansi.
    > say andflags(%#, WD!A)
    > say andlflags(%#, wizard dark !ansi)


## See Also
- [orflags()]
- [flags()]
- [lflags()]

