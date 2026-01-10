# @adestroy
`@adestroy <object>[=<action list>]`

The adestroy attribute is triggered when `<object>` is @destroyed. It can only be set by wizards. Because the attribute is triggered when `<object>` is @destroyed, not when the object is actually purged from the database, it's possible for `<object>` to be @undestroyed after the adestroy has run.

Please note that there are no destroy or odestroy attributes.


## See Also
- [@destroy]
- [@undestroy]
- [EVENTS]

