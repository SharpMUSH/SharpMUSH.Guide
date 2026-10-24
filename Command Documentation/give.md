# give
`give <recipient>=<object>`

SharpMUSH has no money: `give <recipient>=<number>` only answers "Money transfer will not be implemented.", and the `/silent` switch has no effect.

This command gives an `<object>` from your inventory to `<recipient>`. The recipient must be set ENTER_OK or controlled by you, and you must pass his @lock/from. You must also pass `<object>`'s @lock/give, and `<object>` must pass `<recipient>`'s @lock/receive. When you give an object successfully, your GIVE/OGIVE/AGIVE attributes, `<recipient>`'s RECEIVE/ORECEIVE/ARECEIVE attributes, and `<object>`'s SUCCESS/ASUCCESS/OSUCCESS attributes are all triggered.


::: seealso
- [@payment]
- [@cost]
- [LOCKING]
- [inventory]
- [@receive]
- [@give]
- [buy]
- [@asuccess]
:::

