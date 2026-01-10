# WARN_ON_MISSING
This internal command is run when someone attempts to run a command which starts with a function, for example:
```
&test me=$test: [emit(test)]
```
By default it sends the owner of the offending object a message, so they can fix the code to use a command instead of a function. The command must be enabled (either in restrict.cnf or with @command/enable) in order to be used. It can be @hooked to set custom behaviour.

Example:
```
> @hook/override warn_on_missing=#0, wom
> &wom #0=$warn_on_missing: @pemit/list %# [owner(%!)]=[name(%!)] has broken code in %=!
```

```
> &wom #0=$warn_on_missing *: @pemit [owner(%!)]=[name(%!)] has broken code in %= - attempted to run %0!
```


## See Also
- [huh_command]
- [unimplemented_command]

