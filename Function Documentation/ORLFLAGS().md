# ORFLAGS()
# ORLFLAGS()
`orflags(<object>, <string of flag characters>)`
`orlflags(<object>, <list of flag names>)`

  These functions return 1 if `<object>` has any of the given flags, and 0 if it does not. orflags() takes a string of single flag letters, while orlflags() takes a space-separated list of flag names. In both cases, a ! before the flag means "not flag".

  If there is a syntax error like a ! without a following flag, '#-1 INVALID FLAG' is returned. Unknown flags are treated as being not set.

  Examples: Check to see if %# is set Wizard, Dark, or not set Ansi.
    > say orflags(%#, WD!A)
    > say orlflags(%#, wizard dark !ansi)


## See Also
- [andflags()]
- [flags()]
- [lflags()]
- [orlpowers()]

