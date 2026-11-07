# hastype()
`hastype(<object>, <type list>)`

  Returns 1 if `<object>` belongs to one of the types given in `<type list>`, and 0 otherwise. Valid types are PLAYER, THING, ROOM, EXIT and GARBAGE. GARBAGE matches a `#<number>` that is free (see [garbage]).

  Example:
```sharp
@create Test Object
think hastype(test object, PLAYER EXIT)
0
think hastype(test object, PLAYER THING)
1
```


::: seealso
- [TYPES OF OBJECTS]
- [TYPE()]
:::

