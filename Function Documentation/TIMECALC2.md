# TIMECALC2
 `<modifier>`s can be in the following formats:

  NNN days
  NNN hours
  NNN minutes
  NNN.NNNN seconds
  NNN months
  NNN years
  start of month
  start of year
  start of day
  weekday N
  unixepoch
  localtime (Converts a UTC time to local time)
  utc (Converts a local time to UTC)

  For details about what these formats and modifers mean, see https://www.sqlite.org/lang_datefunc.html

 Examples:
```
think timecalc(now, +100 years, localtime)
Mon May 09 03:57:31 2118
think timecalc(secs(), unixepoch)
Wed May 09 12:19:21 2018
```

