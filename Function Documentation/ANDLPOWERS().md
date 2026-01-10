# ANDLPOWERS()
`andlpowers(<object>, <list of powers>)`

  This function returns 1 if `<object>` has all the powers in a specified list, and 0 if it does not. The list is a space-separated list of power names. A '!' preceding a flag name means "not power".

  Thus, ANDLPOWERS(me, no_quota no_pay) would return 1 if I was powered no_quota and no_pay. ANDLPOWERS(me, poll !guest) would return 1 if I had the poll power but not the guest power.

  If there is a syntax error like a ! without a following flag, '#-1 INVALID POWER' is returned. Unknown powers are treated as being not set.


## See Also
- [powers()]
- [orlpowers()]
- [POWERS LIST]
- [@power]

