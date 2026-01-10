# @buy
# @abuy
# @obuy
`@buy <object>[=<message>]`
`@obuy <object>[=<message>]`
`@abuy <object>[=<message>]`

These attributes contain the message shown to a player who successfully buys something from `<object>` using the "buy" command, the message shown to others in the room when something is bought from `<object>` (prefixed with the buyer's name), and the actions to be taken by `<object>` when something is bought from it, respectively. Each attribute is passed the item being purchased as %0 and the amount paid for it as %1.

Example:
```
> @buy Vendor=udefault(me/buy`%0,You buy %0 for %1 [money(%1)]., %0, %1)
> @obuy Vendor=hands some money to [name(me)] for [art(%0)] %0.
> @abuy Vendor=:goes into the storeroom. ; @wait 2=:returns with %n's %0.
```


## See Also
- [buy]
- [@pricelist]
- [MONEY]
- [@lock]
- [VERBS]
- [@cost]
- [give]

