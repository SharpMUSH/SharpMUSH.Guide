# secs()
`secs([<precision>])`<br>
`secs(<zone>[, <digits>])`

  This function returns the number of elapsed seconds since midnight, January 1, 1970 UTC. UTC is the base time zone, formerly GMT. This is a good way of synchronizing things that must run at a certain time.

  The second form is TinyMUX's. `<zone>` is `utc`, the same count, or `local`, which adds the server's offset from UTC so that convsecs(..., utc) shows the server's local time. `<digits>`, 0 to 7, is how many decimal places to show; the clock is read to the millisecond, so places past the third are 0. Without `<digits>` the count is in whole seconds.

  Examples:
```sharp
think secs()
1761609600
think secs(utc, 3)
1761609600.125
```


::: seealso
- [CONVSECS()]
- [time()]
:::

