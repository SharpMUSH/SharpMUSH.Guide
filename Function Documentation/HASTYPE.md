# HASTYPE()
`hastype(<object>, <type list>)`

  Returns 1 if `<object>` belongs to one of the types given in `<type list>`, and 0 otherwise. Valid types are PLAYER, THING, ROOM, EXIT and GARBAGE.

  Example:
```
@create Test Object
think hastype(test object, PLAYER EXIT)
0
think hastype(test object, PLAYER THING)
1
```


## See Also
- [TYPES]
- [type()]

