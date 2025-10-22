# @osuccess
`@success <object>[=<message>]`
`@osuccess <object>[=<message>]`
`@asuccess <object>[=<action list>]`

For players and things, these attributes contain the message shown to someone who picks up `<object>` with the "get" command, the message shown to others when someone gets `<object>`, and the actions to be taken by `<object>` when someone gets it, respectively.

For exits, they contain the message shown to an object passing through the exit `<object>`, the message shown in the exit's source when someone passes through it, and the actions to be taken by the exit when someone passes through it, respectively.

In all cases, %0 is the dbref of the moving object's original location.

Example:
```
> @success Door=You open the door and step inside.
> @osuccess Door=opens the door and steps inside.
```

```
> @success Box=You pick up the box.
> @osuccess Box=picks up the box.
```


## See Also
- [get]
- [goto]
- [@lock]
- [SUCCESS]
- [FAILURE]
- [@odrop]
- [ACTION LISTS]
- [VERBS]

