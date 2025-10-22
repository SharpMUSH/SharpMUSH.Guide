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
# @listen2
An object "hears" anything that another player standing in the same room would hear. For example, if you type in a command, the object does NOT hear it. If the command has a result that people in the room hear, the object will hear it.

For example:
```
> @listen Recorder=@emit *
> @ahear Recorder=:records %0
> @emit Whee!
Whee!
```
In this example, the Recorder's listen-pattern is NOT matched, because it doesn't hear the '@emit Whee!', it only hears the 'Whee!' part, which doesn't match.
```
> @listen Recorder=Cyclonus says, "*"
> say Whee!
Cyclonus says, "Whee!"
Recorder records: Whee!
```


## See Also
- [LISTENING]
- [@ahear]
- [@amhear]
- [@aahear]
- [WILDCARDS]

