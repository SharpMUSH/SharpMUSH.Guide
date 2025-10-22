# @listen
`@listen <object>[=<pattern>]`

Sets the object's listen pattern to `<pattern>`, which can have wildcards. Whenever something the object hears matches the pattern, the object's ahear/amhear/aahear attribute will be triggered. In addition, anything inside the object will hear it as well, if the speaker passes @lock/infilter.

Rather than using @listen, it's recommended you use ^-listening patterns, which can be set in any attribute similar to $-commands. This allows for descriptive attribute names, and also allows multiple patterns per object. See [^] for more information.

For example:
```
> @listen Chair=*
```
Since the wildcard (*) matches anything, anyone inside the object will hear anything said outside it.
```
> @listen Butler=* has arrived.
> @ahear Butler=:walks over to the new arrival and takes %p coat.
```
In this case, the listen pattern is met whenever someone 'arrives' in the room, and then the object does whatever is inside its @ahear attribute.
```
Cyclonus has arrived.
Butler walks over to the new arrival and takes his coat.
```

See [@listen2].

