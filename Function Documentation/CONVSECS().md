# CONVSECS()
# CONVUTCSECS()
`convsecs(<seconds>[, <timezone>])`
`convutcsecs(<seconds>)`

  This function converts `<seconds>` (the number of seconds which have elapsed since midnight on January 1, 1970 UTC) to a time string. Because it's based on UTC, but returns local time, convsecs(0) is not going to be "Thu Jan 1 00:00:00 1970" unless you're in the UTC (GMT) timezone.

  If a `<timezone>` argument is given, the return value is based on that timezone instead of the MUSH server's local time. See [timezones] for more information on valid timezones.

  If Extended convtime() is supported (see @config compile), negative values for `<seconds>` representing dates prior to 1970 are allowed.

  convutcsecs(`<seconds>`) is an alias for convsecs(`<seconds>`, utc).

  Examples:
```
say secs()
You say, "709395750"
```
```
    > say convsecs(709395750)
    You say, "Wed Jun 24 10:22:54 1992"
```
```
    > say convutcsecs(709395750)
    You say, "Wed Jun 24 14:22:30 1992"
```

## See Also
- [convtime()]
- [time()]
- [timefmt()]

