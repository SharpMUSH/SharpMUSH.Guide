# @if
# @ifelse
# @skip
`@if <boolean>=<true>[, <false>]`
`@skip <boolean>=<false>`

If `<boolean>` is true, the action list `<true>` is run, otherwise the action list `<false>` is run. The action list is not queued, it is run immediately, in the same action list as @if.

For RhostMUSH compatability, @skip runs the action list `<false>` when `<boolean>` is false, and does nothing for true values.

@ifelse and `@skip/ifelse` are aliases for @if.

See [@if2] for examples.

## See Also
- [@break]
- [@switch]
- [if()]
- [BOOLEAN VALUES]
# @if2
Examples:
```
> @if 1=say Yes, say No
You say, "Yes"
```

```
> @if 0=say Yes, say No
You say, "No"
```

```
> &foo me=$foo *: say Checking... ; @if %0=say Yes, {say No ; say Sorry!}
```

```
> foo 1
You say, "Checking..."
You say, "Yes"
```

```
> foo 0
You say, "Checking..."
You say, "No"
You say, "Sorry!"
```

