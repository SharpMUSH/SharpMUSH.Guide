# @apayment
# @payment
# @opayment
`@payment <object>[=<message>]`
`@opayment <object>[=<message>]`
`@apayment <object>[=<action list>]`

These attributes contain the messages shown to someone who pays `<object>` pennies with the "give" command, the message shown to others when someone pays `<object>`, and the actions to be taken by `<object>` when it's paid. Each attribute is passed the number of pennies paid as %0.

Example:
```
> @payment Collecting Tin=Thank you for your donation!
> @opayment Collecting Tin=makes a donation to charity.
> @apayment Collecting Tin=&%# me=%0 at [time()]
```


## See Also
- [give]
- [@cost]
- [buy]
- [MONEY]
- [ACTION LISTS]
- [VERBS]

