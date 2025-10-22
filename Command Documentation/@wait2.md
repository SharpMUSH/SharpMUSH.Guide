# @wait2
Normally, a semaphore wait depends on the SEMAPHORE attribute of the object in question. However, it is useful to be able to use other attributes as semaphores, so one object can be used as the blocker for multiple different things at once. Possible attribute names aren't completely arbitrary. See 'HELP SEMAPHORES5' for details.

The syntax for these are:

`@wait <object>/<attribute>=<command list>`
`@wait[/until] <object>/<attribute>/<time>=<command list>`

You cannot do a non-timed semaphore on an attribute with a numeric name, as that is taken as a timeout instead.

See [@wait3].

