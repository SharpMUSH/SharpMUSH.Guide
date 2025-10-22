# forwardlist
`@forwardlist <object>[=<list of dbrefs>]`

If `<object>` is set AUDIBLE, any sound it hears which passes its @filter and @lock/filter will be forwarded (prefixed with its @prefix) to each of the dbrefs given in its @forwardlist attribute, in much the same way as puppets forward sound to their owners.

In order to forward to an object, you must either control it, have the pemit_all power, or pass its @lock/forward. (If you want to allow all objects you own to forward to you, regardless of whether or not they control you, use `@lock/forward me=$me`)


## See Also
- [@filter]
- [@prefix]
- [AUDIBLE]
- [PUPPET]
- [@debugforwardlist]
- [@lock]

