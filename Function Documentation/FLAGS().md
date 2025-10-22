# FLAGS()
`flags()`
`flags([<object>[/<attribute>]])`

  With no arguments, flags() returns a string consisting of the flag letters for each flag on the MUSH. Note that some flags have no letter, and mutlple flags may have the same letter (and so will appear multiple times).

  If an `<object>` is given, flags() returns 'P', 'T', 'R' or 'E', depending on whether `<object>` is a player, thing, room, or exit, followed by the flag letter for each flag set on `<object>`.

  With an `<object>`/`<attribute>`, the flag letters for each flag set on the given `<attribute>` are returned.

  Examples:
```
@create Test
@set Test=no_command puppet
think flags(Test)
Tnp
```

    > think flags(me/describe)
    $vp


## See Also
- [lflags()]
- [list()]

