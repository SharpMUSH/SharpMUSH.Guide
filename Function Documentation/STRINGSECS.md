# STRINGSECS()
`stringsecs(<timestring>)`

  The stringsecs() function takes a string of the form produced by timestring() or etime() and converts it back into seconds.

  Examples:
```
say stringsecs(5m 1s)
You say, "301"
```

    > say stringsecs(3y 2m 7d 5h 23m)
    You say, "95232300"


## See Also
- [timestring()]
- [etimefmt()]
- [convtime()]
- [etime()]

