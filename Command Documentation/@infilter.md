# @infilter
`@infilter <object>[=<pattern 1>[, <pattern 2>[, ..., <pattern N>]]]`

@infilter is meant to be used on objects that have an @listen of "*" (ie, objects that listen to everything, which is commonly used for things like chairs so that someone inside the object can hear everything said/done outside it). @infilter filters out any messages that match one of the patterns and prevents those inside the object from hearing them. It does not stop the @ahear of the listening object from being triggered by things that match the @listen.

Sounds are only forwarded if the speaker also passes `<object>`'s @lock/infilter, which receives the sound heard as %0.

For an explanation of infilter patterns, see the help for "@filter".


## See Also
- [@filter]
- [@listen]
- [@inprefix]
- [AUDIBLE]
- [LISTENING]

