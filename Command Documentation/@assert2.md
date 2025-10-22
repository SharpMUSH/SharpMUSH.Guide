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

