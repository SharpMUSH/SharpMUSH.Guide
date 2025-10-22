# ETIMEFMT()
`etimefmt(<format>, <secs>)`

  This function is similar to timestring() - it formats a number of seconds into days, hours, minutes and seconds. However, its formatting is much more versatile than timestring(), as well as being more complex.

  Escape codes in `<format>` are replaced by the proper values, and other characters are left unchanged.

  A list of all codes is in [etimefmt2].

  Examples:
```
say etimefmt(I have been connected for $2H:$2M., conn(%#))
You say, "I have been connected for 01:32."
think etimefmt($2mm $2ss, 500) - [timestring(500)]
8m 20s -  8m 20s
```


## See Also
- [timestring()]
- [timefmt()]
- [etime()]

