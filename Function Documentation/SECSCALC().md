# SECSCALC()
`timecalc(<timestring>, <modifier>, ...)`
`secscalc(<timestring>, <modifier>, ...)`


 Takes a time and returns the resulting time after applying any modifiers. timecalc() returns a time is the same format as time(), and secscalc() as the seconds since the epoch. These functions can deal with a much broader range of times than the other time functions.

 `<timestring>` can be in the following formats:

  YYYY-MM-DD
  YYYY-MM-DD HH:MM
  YYYY-MM-DD HH:MM:SS
  YYYY-MM-DD HH:MM:SS.SSS
  HH:MM
  HH:MM:SS
  HH:MM:SS.SSS
  now (Current time in UTC)
  DDDDDDDDDD (Julian day, or seconds if followed by a unixepoch modifier)

Continued in HELP TIMECALC2

