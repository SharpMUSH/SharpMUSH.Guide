# @debugforwardlist
# debugforwardlist
`@debugforwardlist <object>[=<list of dbrefs>]`

When `<object>` has an @debugforwardlist attribute set, any debug output it produces (either because it has the DEBUG flag set, or because an attribute with the DEBUG attribute flag is evaluated) is forwarded to all the dbrefs listed in the debugforwardlist.

The @debugforwardlist must be a space-seperated list of dbrefs. In order to forward to an object, you must either control it, have the pemit_all power, or pass its @lock/forward.


## See Also
- [DEBUG]
- [@forwardlist]
- [@lock]

