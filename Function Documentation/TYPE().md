# TYPE()
`type(<object>)`

  This function returns the type of an object - one of PLAYER, THING, EXIT, ROOM or GARBAGE - or #-1 if the object can't be found.

  Examples:
```
@create Test
think type(Test)
THING
think type(me)
PLAYER
think type(here)
ROOM
```


## See Also
- [hastype()]
- [TYPES OF OBJECTS]

