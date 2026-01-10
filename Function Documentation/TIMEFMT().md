# TIMEFMT()
`timefmt(<format>[, <secs>[, <timezone>]])`

  This function returns the time and date, formatted according to `<format>`. `<secs>` is the time/date to format, as the number of seconds since the epoch (as returned by secs(), convtime(), etc). If no `<secs>` is given, the current date/time of the MUSH host is used. If no `<timezone>` is provided, the MUSH host's timezone is used; see [timezones] for valid formats for `<timezone>`. Note: Using a fractional timezone offset from GMT may result in timefmt() showing the time zone name (if displayed) as GMT. Using a symbolic name on a server that supports them should show the name correctly.

  A list of all codes for `<format>` is in [timefmt2].

  Example:
```
think timefmt($A\, the $dth day of $B.)
Monday, the 17th day of July.
```


## See Also
- [convsecs()]
- [etimefmt()]
- [timezones]

