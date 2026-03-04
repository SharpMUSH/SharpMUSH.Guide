# TIMECALC()
# SECSCALC()
`timecalc(<timestring>, <modifier>, ...)`<br>
`secscalc(<timestring>, <modifier>, ...)`


 Takes a time and returns the resulting time after applying any modifiers. timecalc() returns a time is the same format as time(), and secscalc() as the seconds since the epoch. These functions can deal with a much broader range of times than the other time functions.

 `<timestring>` can be in the following formats:

  YYYY-MM-DD<br>
  YYYY-MM-DD HH:MM<br>
  YYYY-MM-DD HH:MM:SS<br>
  YYYY-MM-DD HH:MM:SS.SSS<br>
  HH:MM<br>
  HH:MM:SS<br>
  HH:MM:SS.SSS<br>
  now (Current time in UTC)<br>
  DDDDDDDDDD (Julian day, or seconds if followed by a unixepoch modifier)

Continued in HELP TIMECALC2

