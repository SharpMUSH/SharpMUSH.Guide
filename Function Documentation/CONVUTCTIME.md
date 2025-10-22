# CONVUTCTIME()
`convtime(<time string>,[<timezone>])`
`convutctime(<time string>)`

  This functions converts a time string to the number of seconds since Jan 1, 1970 GMT. A time string is of the format:
      Ddd MMM DD HH:MM:SS YYYY
  where Ddd is the day of the week, MMM is the month, DD is the day of the month, HH is the hour in 24-hour time, MM is the minutes, SS is the seconds, and YYYY is the year. If you supply an incorrectly formatted string, it will return #-1.

  convutctime() and convtime() with a second argument of 'utc' assume the timestring is based on UTC time. Other time zones can be specified too. If no `<timezone>` is given, the server's timezone is used.

  If the extended convtime() is supported (See @config compile), more formats for the date are enabled, including ones missing the day of week and year, and a 'Month Day Year' format. In this case, convtime() can also handle dates prior to 1970 (in which case a negative number will be returned).

  Example:
```
say time()
You say, "Wed Jun 24 10:22:54 1992"
```

    > say convtime(Wed Jun 24 10:22:54 1992)
    You say, "709395774"


## See Also
- [convsecs()]
- [time()]
- [timezones]

