# @hook3
`@hook/override/inline` and `@hook/extend/inline` allow you to write softcoded commands which act exactly like built-in commands - because they're run immediately, instead of being queued, output from the command appears in the right order relative to other commands in the action list. By default, commands hooked with `/inline` have access to the q-registers of the calling action list, and @breaks in the hooked command propagate to the calling action list, allowing you to write your own control structures.

For example, this adds a new command, @qbreak, which works like @break but stops command execution when %q0 contains a true value:
```
> &qbreak #123=$@qbreak: @break %q0=@pemit/silent %#=Stopping.
> @command/add @qbreak
> @hook/override/inline @qbreak=#123, qbreak
```

This behaviour can be altered by adding the following switches to `@hook/inline`:
- /nobreak: @breaks in the hooked command do not stop the calling action list from running
- /localize: q-registers are saved before the hooked command is run, and restored after it completes
- /clearregs: All q-registers are reset before the hooked command is run. Most useful when used with /localize.

`@hook/inplace` is an alias for `@hook/inline/localize/clearregs/nobreak`.

See [@hook6] for some examples of using `@hook/override/inline`.

