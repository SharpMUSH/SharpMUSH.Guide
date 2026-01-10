# HUH_COMMAND
This internal command is run whenever someone attempts to run a command which doesn't match any built-in or softcoded commands. The huh_command command cannot be run directly, but it can be @hook'd to perform custom actions when an invalid command is entered.

Examples:
```
> &cmd.huh #0=$huh_command: @pemit/sil %#=Whu?
> @hook/override huh_command=#0, cmd.huh
> dsfsdf
Whu?
```

```
> &cmd.huh #0=$huh_command *: @pemit/sil %#=Whu? What is '%0'?
> sdfsdf ert
Whu? What is 'sdfsdf ert'?
```

```
> &cmd.huh #0=$huh_command *: &typos %#=add(default(%#/typos,0),1) ; @pemit/sil %#=Huh? %b(Type "help" for help.) ; @break mod(get(%#/typos),10) ; @wall %n wins %p [ordinal(div(get(%#/typos),10))] typo trophy!
> asfdsf (10 times)
Huh? (Type "help" for help.) (10 times)
Announcement: Room Zero shouts, "Dunce wins his first typo trophy!"
```


## See Also
- [@hook]
- [EVALUATION ORDER]
- [warn_on_missing]
- [unimplemented_command]

