# MONEY()
`money(<integer>)`<br>
`money(<object>)`

  SharpMUSH does not track money, so money() always returns `#-1 NOT SUPPORTED` and tells you so. In PennMUSH it returns the name of an amount of money, or the pennies `<object>` holds. See [COMPATIBILITY ECONOMY].

  Example:
```sharp
> think money(me)
#-1 NOT SUPPORTED
```


**See Also:**
- [score]

