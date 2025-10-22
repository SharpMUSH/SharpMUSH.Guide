# FOREACH2

  Examples:
```
&add_one me=add(%0,1)
say foreach(add_one, 54321)
You say, "65432"
say [foreach(add_one, This is #0# number, #, #)]
You say, "This is 1 number"
```

    > &upper me=ucstr(%0)
    > say foreach(upper, quiet quiet >shout`< quiet, >`, <)
    You say, "quiet quiet SHOUT quiet"

    > &is_alphanum me=regmatch(%0, \[\[:alnum:\]\])%b
    > say foreach(is_alphanum,jt1o+)
    You say, "1 1 1 1 0 "


## See Also
- [map()]
- [anonymous attributes]

