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

