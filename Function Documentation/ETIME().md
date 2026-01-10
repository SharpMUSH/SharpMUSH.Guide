# ETIME()
`etime(<seconds>[, <width>])`

  This function formats a number of seconds using the same rules as the 'On for' and 'Idle' columens in WHO's output. The optional `<width>` argument controls the maximum size of the returned string.

  The elapsed time is split into years, weeks, days, hours, minutes and seconds fields. As many non-zero fields as can fit into `<width>` characters are used, in that order. If all fields are 0, seconds are displayed.

  Examples:
```
think etime(59)
59s
think etime(60)
1m
think etime(61)
1m  1s
think etime(61, 5)
1m
```


## See Also
- [etimefmt()]
- [timestring()]
- [stringsecs()]

