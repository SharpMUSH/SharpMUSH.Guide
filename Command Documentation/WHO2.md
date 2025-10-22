# WHO2
In earlier versions of PennMUSH, WHO was a socket command (meaning only players could use it, and that while it could not be overwritten, you could use softcoded 'who' commands along side it which worked as long as they weren't typed in all upper-case). Existing games which have softcoded 'who' commands can maintain this feature by using an @hook/ignore on the WHO command, such as:
```
> &HOOK.WHO <object>=not(comp(left(%c,3),WHO))
> @hook/ignore WHO=<object>,HOOK.WHO
```

@hooks are not maintained across reboots, and should be placed into an @startup on a low-dbref object.

Note: The WHO command available at the login screen is totally separate from the in-game WHO command, and is not affected by any changes to the in-game WHO. To alter that, use the WHO_FILE @config option.


## See Also
- [@doing]
- [@poll]
- [SESSION]

