# mtime()
# msecs()
`mtime(<object>[, <utc?>])`<br>
`mtime(<object>/<attribute>[, <utc?>])`<br>
`msecs(<object>[, <precision>])`<br>
`msecs(<object>/<attribute>[, <precision>])`

  mtime() returns the date and time that one of `<object>`'s attributes or locks was last added, deleted, or modified. The time returned is in the server's local timezone, unless `<utc?>` is true, in which case the time is in the UTC timezone.

  msecs() returns the time as the number of seconds since the epoch.

  Every type of object, players included, has a modification time. You must be able to examine `<object>`; otherwise both return #-1 PERMISSION DENIED.

  Given `<object>`/`<attribute>`, both return when that attribute's value was last set. The attribute is found as get() finds it, parents included, and you need only be able to read it. A missing attribute returns #-1 NO SUCH ATTRIBUTE. An attribute with no recorded time returns nothing: a branch above other attributes that holds no value of its own (never set, or cleared), or one written before attributes kept their times.

```sharp
&NOTE me=hello
think msecs(me/NOTE)
```

  Output: the number of seconds since the epoch at which NOTE was set.


::: seealso
- [CTIME()]
- [time()]
- [SECS()]
- [CONVTIME()]
- [CONVSECS()]
- [CACHE()]
:::

