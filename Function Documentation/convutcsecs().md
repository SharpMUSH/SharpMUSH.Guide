# convsecs()
# convutcsecs()
`convsecs(<seconds>[, <timezone>[, <places>]])`<br>
`convutcsecs(<seconds>)`

  This function converts `<seconds>` (the number of seconds which have elapsed since midnight on January 1, 1970 UTC) to a time string. Because it's based on UTC, but returns local time, convsecs(0) is not going to be "Thu Jan 1 00:00:00 1970" unless you're in the UTC (GMT) timezone.

  If a `<timezone>` argument is given, the return value is based on that timezone instead of the MUSH server's local time. See [timezones] for more information on valid timezones.

  A third argument, as TinyMUX takes it, gives the seconds up to `<places>` decimal places, at most 7; trailing zeros are dropped, and an empty or `local` timezone is the server's. `think convsecs(1000000000.5,utc,3)` gives `Sun Sep 09 01:46:40.5 2001`.

  Negative values for `<seconds>`, representing dates prior to 1970, are allowed.

  convutcsecs(`<seconds>`) is an alias for convsecs(`<seconds>`, utc).

  Examples:
```sharp
say secs()
You say, "709395750"
```
```sharp
    > say convsecs(709395750)
    You say, "Wed Jun 24 10:22:54 1992"
```
```sharp
    > say convutcsecs(709395750)
    You say, "Wed Jun 24 14:22:30 1992"
```

::: seealso
- [CONVTIME()]
- [time()]
- [timefmt()]
:::

