# WARN_ON_MISSING
This internal command is run when someone attempts to run a command which starts with a function, for example:
```sharp
&test me=$test: [emit(test)]
```
By default it sends the owner of the offending object a message, so they can fix the code to use a command instead of a function, and the command line is not run. The command is disabled in a new game; enable it with `@command/enable warn_on_missing` (or the `restrict_command` configuration). It can be @hooked to set custom behaviour.


::: seealso
- [HUH_COMMAND]
- [UNIMPLEMENTED_COMMAND]
:::

