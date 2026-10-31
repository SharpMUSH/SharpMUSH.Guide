# lrooms()
`lrooms(<room>[, <depth>[, <all>[, <objid>]]])`

  Returns the rooms you can reach from `<room>` through exits you can see, up to `<depth>` steps away. `<depth>` defaults to 1 and can be at most 50. Exits on the room's parents count too. With the `rhost_lrooms` @config option on, as on RhostMUSH, any depth is taken: 0 follows exits as far as they lead, a negative depth counts as 1, and at most 1,000 rooms are listed. See [compatibility config].

  If `<all>` is false, only the rooms exactly `<depth>` steps away are listed; by default every room on the way is listed. A room is listed only if you can examine it, are in it, or it is the enactor. `<room>` itself is never listed. The result is in dbref order, as objids when `<objid>` is true.

  Example:
```sharp
@dig/teleport Hub=North;n,South;s
@dig North Room=North;n,South;s
think lrooms(here)
#123
```

::: seealso
- [LEXITS()]
- [EXITMAP()]
:::

