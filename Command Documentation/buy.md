# buy
`buy <item>[ from <vendor>][ for <cost>]`

When you try buying an item, PRICELIST attributes on nearby objects (or `<vendor>` if given) will be checked for matching item:costs. If `<cost>` is given, the first item that matches that cost will be purchased. Otherwise, the first matching item that you can afford will be purchased. You must pass the vendor's @lock/pay in order to purchase items.

If the pricelist match contains a list of prices, ITEM:30,20,10, the first one you can afford will be the resulting price.

Example:
```
> @PRICELIST vendor=coke:20 pepsi:20
> &drink`coke vendor=You enjoy a delicious coke.
> &drink`pepsi vendor=It tastes like a funny coke.
> @BUY vendor=u(drink`%0)
> buy coke
You enjoy a delicious coke.
```


## See Also
- [@BUY]
- [@PRICELIST]
- [give]
- [@COST]

