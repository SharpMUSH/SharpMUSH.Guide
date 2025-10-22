# TIME()
# UTCTIME()
`time()`
`time(<timezone>)`
`time(<dbref>)`

  time() gives you the current time on the MUSH. By default this is the time on the server the MUSH is running on, and not the time of the caller.

  With an argument, time() returns the time in the specified timezone, or in the timezone set in the specified object's TZ attribute; for more information, see [timezones].

  utctime() is an alias for time(utc).

Continued in HELP TIME2

