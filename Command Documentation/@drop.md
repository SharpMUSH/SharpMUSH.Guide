# @adrop
# @odrop
# @drop
`@drop <object>[=<message>]`
`@odrop <object>[=<message>]`
`@adrop <object>[=<action list>]`

When `<object>` is a player or thing, the @drop attribute is shown to whoever drops `<object>`, and @odrop to others in the location `<object>` is dropped in. The @adrop attribute is triggered when `<object>` is dropped.

When `<object>` is an exit, @drop is shown to objects going through `<object>`, and @odrop is shown to objects in the exit's destination. @adrop is triggered when someone passes through the exit.

Example:
```
> @drop Box=You put the box down gently.
> @odrop Box=puts the box down gently.
```

```
> @odrop South=arrives from the North.
```


## See Also
- [drop]
- [empty]
- [ACTION LISTS]
- [VERBS]
- [@success]

