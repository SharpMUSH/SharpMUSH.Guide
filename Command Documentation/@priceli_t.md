# @pricelist
`@pricelist <object>=<item1>:<price1>[,<price2>][ <item2>:...]`

The PRICELIST attribute is a space-delimited list of item names and prices that are checked when the 'buy' command is run.

An item name may have '_'s where the player would use a space in the name.

A price is either a number (20), a range of numbers (10-30), or a minimum number (10+). An item can also have several different prices, separated by commas.

A player must pass `<object>`'s @lock/pay in order to purchase from it.

Example::
```
> @PRICELIST vendor=mansion:1000+ large_house:100-200 house:20,30,50
```


## See Also
- [buy]
- [@buy]
- [MONEY]
- [@cost]
- [give]
- [@lock]

