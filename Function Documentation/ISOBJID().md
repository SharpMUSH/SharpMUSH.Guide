# ISDBREF()
# ISOBJID()
`isdbref(<string>)`
`isobjid(<string>)`

  isobjid() returns 1 if `<string>` is the object id of an existing object. If `<string>` is not a full objid, or is the objid of a garbage object, it returns 0.

  isdbref() functions the same, but will also return 1 if `<string>` is the dbref of an existing (or garbage) object.

  Examples:
```
@stats
100 objects = 20 rooms, 20 exits, 20 things, 20 players, 20 garbage.
The next object to be created will be #33.
```

    > think isdbref(#33)
    1
    > think isobjid(#33:1234567890)
    0

    > think csecs(#1)
    1324654503
    > think isdbref(#1)
    1
    > think isobjid(#)
    0
    > think isdbref(#1:1324654503)
    1
    > think isobjid(#1:1324654503)
    1
    > think isobjid(#1:9876543210)
    0


## See Also
- [DBREFS]
- [OBJECT IDS]
- [num()]
- [objid()]

