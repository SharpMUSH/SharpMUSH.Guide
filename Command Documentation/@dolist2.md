# @dolist2
If the `/notify` switch is given, the command "@notify me" is queued after all copies of `<action list>` have been queued. This is useful for object synchronization with semaphores.

If the `/inline` switch is given, @dolist will run the new action lists instantly, instead of queueing them to be run later.

When using `@dolist/inline`, an @break in an `<action list>` will stop the calling action list (and any further `<action list>`s) from running. Each `<action list>` will also be able to see/alter the q-registers for the calling action list. The following switches can be used with `/inline` to alter this behaviour:
- /nobreak: @breaks in `<action list>` do not effect to the calling action list
- /localize: q-registers are saved before each `<action>` is run, and restored after it completes
- /clearreg: q-registers are all reset before each `<action>` is run. Most useful when used in combination with /localize.

`@dolist/inplace` is an alias for `@dolist/inline/nobreak/localize`.

See [@dolist3] for examples.

## See Also
- [iter()]
- [itext()]
- [map()]
- [@notify]
- [SEMAPHORES]
- [ACTION LISTS]

