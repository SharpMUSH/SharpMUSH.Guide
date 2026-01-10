# @adescribe
# @odescribe
`@odescribe <object>[=<message>]`
`@adescribe <object>[=<action list>]`

These attributes contain the message shown to others in the enactor's location when he looks at `<object>`, and the actions to be taken by `<object>` when someone looks at it. (See [@describe] for the attribute shown to the enactor when he looks at `<object>`.) When the enactor is inside `<object>`, the @oidescribe and @aidescribe attributes will be used instead, if set. Please note that using these attributes to show long messages is often found annoying.

Examples:
```
> @odescribe Walker=glances at Walker and sniggers.
> @adescribe me=think %n just looked at you.
```


## See Also
- [look]
- [@describe]
- [@idescribe]
- [ACTION LISTS]

