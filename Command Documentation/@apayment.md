# @apayment
# @payment
# @opayment
`@payment <object>[=<message>]`<br>
`@opayment <object>[=<message>]`<br>
`@apayment <object>[=<action list>]`

These attributes can be set, but SharpMUSH has no money: "give" never pays an object, so they are never shown or run.

### Example
```sharp
> @payment Collecting Tin=Thank you for your donation!
> @opayment Collecting Tin=makes a donation to charity.
> @apayment Collecting Tin=&%# me=%0 at [time()]
```


::: seealso
- [give]
- [@cost]
- [buy]
- [MONEY]
- [action lists]
- [verbs]
:::

