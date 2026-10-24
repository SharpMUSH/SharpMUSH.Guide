# mtime()
# msecs()
`mtime(<object>[, <utc?>])`<br>
`msecs(<object>[, <precision>])`

  mtime() returns the date and time that one of `<object>`'s attributes or locks was last added, deleted, or modified. The time returned is in the server's local timezone, unless `<utc?>` is true, in which case the time is in the UTC timezone.

  msecs() returns the time as the number of seconds since the epoch.

  Every type of object, players included, has a modification time. You must be able to examine `<object>`; otherwise both return #-1 PERMISSION DENIED.


::: seealso
- [CTIME()]
- [time()]
- [SECS()]
- [CONVTIME()]
- [CONVSECS()]
:::

