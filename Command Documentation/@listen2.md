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

