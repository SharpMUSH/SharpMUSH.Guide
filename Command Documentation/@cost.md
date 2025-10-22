# @cost
`@cost <object>[=<amount>]`

The COST attribute contains the number of pennies that must be given to `<object>` to trigger its @pay/@opay/@apay attributes. If less than this amount is given, the money will be refused, and if more is given, the difference is refunded.

This attribute is evaluated, with the amount being given passed as %0. If the attribute returns a number less than 0, the money will be refused. Non-players must have this attribute set in order to receive pennies. Players who don't have a COST always accept the amount of pennies given.

Example:
```
> @cost Exit Machine=10
> @apay Exit Machine=@open %n-exit
> @pay Exit Machine=Your exit has been created.
```

```
> give Exit Machine=10
Your exit has been created.
(The exit will also have been opened by the machine.)
```

```
> @cost charity=%0
> @pay charity=Thanks for your donation of %0 [money(%0)].
```


## See Also
- [give]
- [MONEY]
- [@pay]
- [money()]
- [buy]

