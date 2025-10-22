# @trigger
`@trigger[/<switches>] <object>/<attribute>[=<arg0>, ..., <arg29>]`
`@trigger/match[/<switches>] <object>/<attribute>=<string>`

@trigger queues an action list stored in an attribute. It can also pass values to that attribute on the stack, as %0 to %9 and `r(0,args)` to `r(29,args)`.

Switches:
- /spoof: If you control `<object>`, enactor is preserved.
- /inline: Run @triggered attribute immediately, rather than queueing it.
- /clearregs: Clear Q-registers before @triggering.

If `/inline` is given, the following switches can be used:
- /nobreak: If the @triggered attribute has @break or @assert, it won't propagate up.
- /localize: Don't let the @triggered attribute override your Q-registers.

`/inplace` is an alias for `/inline/localize/nobreak`.

The `/match` switch is explained in [@trigger2]

You must control `<object>`, or it must be Link_OK and you must have the same owner, to trigger an attribute on it.

The triggered attribute is queued - the new action list is not run instantly. The action list is executed by `<object>`, not by the object using @trigger.

See [@trigger2].

