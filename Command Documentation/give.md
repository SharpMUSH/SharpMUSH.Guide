# give
`give[/silent] <recipient>=<number>`
`give[/silent] <number> to <recipient>`
`give <recipient>=<object>`
`give <object> to <recipient>`

The first two forms of this command give `<number>` pennies to `<recipient>`. If `<recipient>` is a non-player, it must have an @COST, and any pennies given to it will go to its owner. The amount given must match `<recipient>`'s @cost (if set). If `/silent` is given, the message informing the recipient how many pennies were given is suppressed. Wizards may "give" a negative number of pennies to take from players. When you give `<recipient>` pennies, his PAYMENT/OPAYMENT/APAYMENT attributes are triggered. You must pass `<recipient>`'s @lock/pay, unless you are a Wizard and are either giving a negative number of pennies, or giving to a player with no @cost.

The last two forms of this command give an `<object>` from your inventory to `<recipient>`. The recipient must be set ENTER_OK, and you must pass his @lock/from. You must also pass `<object>`'s @lock/give, and `<object>` must pass `<recipient>`'s @lock/receive. When you give an object successfully, your GIVE/OGIVE/AGIVE attributes, `<recipient>`'s RECEIVE/ORECEIVE/ARECEIVE attributes, and `<object>`'s SUCCESS/ASUCCESS/OSUCCESS attributes are all triggered.


## See Also
- [@pay]
- [@cost]
- [@lock]
- [inventory]
- [@receive]
- [@give]
- [buy]
- [@success]

