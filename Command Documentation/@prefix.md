# @prefix
`@prefix <object>[=<message>]`

This attribute is meant to be used with the AUDIBLE flag. It is evaluated, with %0 the message, and prepended to the sound an AUDIBLE object passes on to its @forwardlist; without one, the sound starts "From `<object>`, ". SharpMUSH does not propagate sound through AUDIBLE exits yet, so @prefix is not used for them.


::: seealso
- [@inprefix]
- [AUDIBLE]
- [@listen]
:::

