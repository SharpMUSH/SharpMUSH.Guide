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
# @trigger2
By default, the object using @trigger will be the enactor (%#) for the triggered attribute. However, if you control `<object>`, the `/spoof` switch can be used to preserve the current enactor. This is useful for global commands with @a* verb attributes.

Q-registers set at the time @trigger is run will be copied and made available in the triggered attribute, unless the `/clearregs` switch is given.

@trigger can execute obj/attrs that are $-commands or ^-listens. e.g:
```
> &SLAP object=$slap *=*:@emit %n slaps %0 around with a %1
> slap himself=trout
Walker slaps himself around with a trout
> @trigger object/slap=himself,trout
Walker slaps himself around with a trout
```

Note that you have to pass %0 and %1 yourself. For some $-commands or listens, the pattern can get complex (especially with regexps!), so `/match` allows you to pass a command to match the pattern.
```
> @trigger/match object/slap=slap himself=trout
Walker slaps himself around with a trout
```

See [@trigger3] for examples.

## See Also
- [@include]
- [ufun()]
- [VERBS]
# @trigger3
Examples:
```
> &GREET me=POSE waves hi.
> @trigger me/GREET
Cyclonus waves hi.
```

```
> &GREET me=POSE waves to %0! ; say Hi there, %1.
> @trigger me/GREET=Gears, Arcee
Cyclonus waves to Gears.
You say, "Hi there, Arcee."
```

```
> &foo Globals=$foo *: @assert setr(0,locate(%#,%0,*))=@nspemit %#=Who? ; @nspemit %#=You foo [name(%q0)]. ; @trigger %q0/AFOO
> &AFOO Bar=:is foo'd by %n!
> FOO BAR
Bar is foo'd by Globals!
```

```
> &foo Globals=$foo *: @assert setr(0,locate(%#,%0,*))=@nspemit %#=Who? ; @nspemit %#=You foo [name(%q0)]. ; @trigger/spoof %q0/AFOO
> FOO BAR
Bar is foo'd by Cyclonus!
```

