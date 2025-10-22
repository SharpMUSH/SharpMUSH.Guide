# @areceive
`@receive <recipient>[=<message>]`
`@oreceive <recipient>[=<message>]`
`@areceive <recipient>[=<action list>]`

These attributes contain the message shown `<recipient>` when he receives an object (via 'get' or 'give'), the message shown to others in `<recipient>`'s location when he receives an object, and the actions to be taken by `<recipient>` when he receives an object, respectively.

In all cases, %0 is the dbref of the object received. If the object was 'give'n, %1 will be the dbref of the giver.


## See Also
- [give]
- [get]
- [@give]
- [@success]
- [ACTION LISTS]
- [VERBS]

