# RESTARTTIME()
`starttime()`
`restarttime()`

  starttime() returns the time the MUSH was last started, and restarttime() returns the time it was last restarted, including @shutdown/reboots. The times are in the same format as time().

  Example:
```
say starttime()%r[restarttime()]
You say "Sat Dec  7 00:09:13 1991
You say "Sat Dec  7 00:09:13 1991
@shutdown/reboot
say starttime()%r[restarttime()]
You say "Sat Dec  7 00:09:13 1991
Tue Sep 22 13:54:04 2015
```


## See Also
- [convtime()]
- [restarts()]

