# @aenter
# @enter
# @oenter
# @oxenter
`@enter <object>[=<message>]`
`@oenter <object>[=<message>]`
`@oxenter <object>[=<message>]`
`@aenter <object>[=<action list>]`

These attributes contain the messages shown to someone who enters `<object>`, the message shown to others inside `<object>` when someone enters it, the message shown to those in `<object>`'s location when someone enters it, and the actions to be taken by `<object>` when someone enters it, respectively.

The old location of the entering object is passed in %0, if `<object>` had permission to see it there.

Example:
```
> @enter Sofa=You sit on the comfy sofa.
> @oenter Sofa=sits with you on the sofa.
> @oxenter Sofa=sits down on the sofa. It looks comfy.
> @aenter Sofa=@pemit/silent owner(me)=%n sat down on [name(me)]!
```


## See Also
- [enter]
- [@ealias]
- [leave]
- [ACTION LISTS]
- [VERBS]

