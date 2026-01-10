# @ONAME
# @ANAME
`@oname <object>[=<message>]`
`@aname <object>[=<action list>]`

Whenever `<object>`'s name is changed (via @name), others in the same location will see the contents of `<object>`'s ONAME attribute, prepended with `<object>`'s new name. At the same time, `<object>`'s ANAME attribute will be triggered. Both attributes receive the old name as %0, and the new name as %1.

Example:
```
> @oname me=has regenerated from %0!
> @aname me=think >> Renamed from %0 to %1 at [time()] by %n(%#).
```


## See Also
- [@name]
- [name()]
- [VERBS]

