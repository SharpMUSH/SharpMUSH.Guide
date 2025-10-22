# @notify2
`@notify/setq` is a special form of @notify: It requires that a queue entry exists and is waiting on `<object>[/<attr>]`. When this is the case, then `@notify/setq` will modify the Q-registers of the extant queue entry.

`/setq` supercedes all other switches: You cannot `@notify/all/setq` or `@notify/any/setq` - it deals with just one queue entry.

Example:
```
> @wait me=think Hello, %q0!
> @notify/setq me=0,Walker
Hello, Walker!
```


## See Also
- [SEMAPHORES]
- [@drain]
- [@wait]
- [@halt]

