# MTIME()
# MSECS()
`mtime(<object>[, <utc?>])`
`msecs(<object>)`

  mtime() returns the date and time that one of `<object>`'s attributes or locks was last added, deleted, or modified. The time returned is in the server's local timezone, unless `<utc?>` is true, in which case the time is in the UTC timezone.

  msecs() returns the time as the number of seconds since the epoch.

  Only things, rooms, and exits have modification times. You must be able to examine an object to see its modification time.


## See Also
- [ctime()]
- [time()]
- [secs()]
- [convtime()]
- [convsecs()]

