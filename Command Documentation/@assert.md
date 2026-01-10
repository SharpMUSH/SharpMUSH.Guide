# @break
# @assert
`@break[/queued] <boolean>[=<action list>]`
`@assert[/queued] <boolean>[=<action list>]`

`@break` stops the execution of further commands in the current action list if `<boolean>` is a true value. It doesn't affect new queue entries made by previous commands in the action list. It can be useful for doing error checking without having to nest @switches.

If `<action list>` is given, it is executed instead of the rest of the commands in the current action list. By default, `<action list>` is run immediately, replacing the rest of the action list @break was called in. If the `/queued` switch is given, `<action list>` will instead be queued to be run later. @break also accepts an /inline switch, for Rhost compatability; this switch does nothing on PennMUSH.

`@assert` does the inverse: it stops execution if `<boolean>` evaluates to false.

See [@break2] for examples.

## See Also
- [ACTION LISTS]
- [QUEUE]
- [BOOLEAN VALUES]
- [@switch]
- [@if]
# @break2
# @assert2
Examples:
```
> @va obj=$testme *: @pemit %#=You try a test ; @break lt(%0,10)=@pemit %#=But you're too low! ; @pemit %#=And you succeed!
> testme 0
You try a test
But you're too low!
```

```
> testme 10
You try a test
And you succeed!
```

```
> @force me={@switch 1=1, think Third; think First; @break 1; think Second}
First
Third
(The @switch is run, which queues 'think Third', think First is run, displaying 'First', command execution is broken (so we never think Second), and then the queued 'think Third' is run, displaying Third. If you figured that out, you have a very good understanding of the PennMUSH queue. :)
```

