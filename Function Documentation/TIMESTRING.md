# TIMESTRING()
`timestring(<seconds>[, <pad flag>])`

  The timestring function takes a number of seconds as input and returns the amount of time formatted into days, hours, minutes, and seconds. If `<pad flag>` is 1, all time periods will be used even if the number of seconds is less than a day, hour, or minute. If `<pad flag>` is 2, all numbers will be 2 digits long.

  Examples:
```
say timestring(301)
You say, " 5m  1s"
say timestring(301,1)
You say, "0d  0h  5m  1s"
say timestring(301,2)
You say, "00d 00h 05m 01s"
```


## See Also
- [stringsecs()]
- [convsecs()]
- [etime()]
- [etimefmt()]

