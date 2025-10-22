# @ouse
`@use <object>[=<message>]`
`@ouse <object>[=<message>]`
`@ause <object>[=<action list>]`

These attributes contain the message shown to someone who successfully uses `<object>`, the message shown to others when someone uses `<object>`, and the actions to be taken by `<object>` when it is used, respectively.

Note that, if `<object>` has a CHARGES attribute set and it does not contain a number greater than 0, the RUNOUT attribute is triggered instead of the AUSE attribute. See [@charges] for more information.

Example:
```
> @use Jack-In-The-Box=You wind the handle.
> @ouse Jack-In-The-Box=winds the handle.
> @ause Jack-In-The-Box=@wait 3=POSE pops up with a bang!
> use Jack-In-The-Box
```


## See Also
- [use]
- [@charges]
- [@runout]
- [ACTION LISTS]
- [VERBS]

