# ITEXT2

  Examples:
```
say iter(red blue green, iter(fish shoe, #@:##))
You say, "1:red 1:red 2:blue 2:blue 3:green 3:green"
```

    > say iter(red blue green, iter(fish shoe, inum(ilev()):[itext(1)]))
    You say, "1:red 1:red 2:blue 2:blue 3:green 3:green"

    > say iter(red blue green,iter(fish shoe, inum(0):[itext(0)]))
    You say, "1:fish 2:shoe 1:fish 2:shoe 1:fish 2:shoe"

    > say iter(red blue green,iter(fish shoe, %i1:%i0))
    You say, "red:fish red:shoe blue:fish blue:shoe green:fish green:shoe"

    > @dolist red blue green=say iter(fish shoe, %i1:%i0)
    You say, "red:fish red:shoe"
    You say, "blue:fish blue:shoe"
    You say, "green:fish green:shoe"


## See Also
- [iter()]
- [@dolist]

