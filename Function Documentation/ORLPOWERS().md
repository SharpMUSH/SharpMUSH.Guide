# ORLPOWERS()
`orlpowers(<object>, <list of powers>)`

  This function returns 1 if `<object>` has at least one of the powers in a specified list, and 0 if it does not. The list is a space-separated list of power names. A '!' preceding a flag name means "not power".

  Thus, ORLPOWERS(me, poll login) would return 1 if I have the poll and login powers. ORLFLAGS(me, functions !guest) would return 1 if I have the functions power or are not a guest.

  If there is a syntax error like a ! without a following power, '#-1 INVALID POWER' is returned. Unknown powers are treated as being not set.


## See Also
- [powers()]
- [andlpowers()]
- [POWERS LIST]
- [@power]
- [orlflags()]

