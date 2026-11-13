# starttime()
# restarttime()
# restartsecs()
`starttime()`<br>
`restarttime()`<br>
`restartsecs()`

  starttime() returns the time the MUSH was last started, and restarttime() returns the time it was last restarted, including @shutdown/reboots. The times are in the same format as time(). restartsecs() returns the restart time in seconds since 1970, as secs() does; it comes from TinyMUX.

  Example:
```sharp
> say starttime()%r[restarttime()]
You say, "Sat Dec  7 00:09:13 1991
Sat Dec  7 00:09:13 1991"
> @shutdown/reboot
> say starttime()%r[restarttime()]
You say, "Sat Dec  7 00:09:13 1991
Tue Sep 22 13:54:04 2015"
```


::: seealso
- [CONVTIME()]
- [RESTARTS()]
:::

