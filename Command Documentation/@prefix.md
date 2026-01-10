# @prefix
`@prefix <object>[=<message>]`

This attribute is meant to be used in conjunction with the AUDIBLE flag. The @prefix of the object is prepended to messages propagated via AUDIBLE. Pronoun substitution is done on @prefix messages.

For example, if you have an audible exit "Outside" leading from a room Garden to a room Street, with @prefix "From the garden nearby," if Joe does a ":waves to everyone." from the Garden, the people at Street will see the message, "From the garden nearby, Joe waves to everyone."


## See Also
- [@inprefix]
- [AUDIBLE]
- [@listen]

