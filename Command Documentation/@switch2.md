# @switch2
When using `@switch/inline`, an @break in an `<action>` will stop the calling action list (and any further `<action>`s) from running. Each `<action>` will also be able to see/alter the q-registers for the calling action list. The following switches can be used with `/inline` to alter this behaviour:
- /nobreak: @breaks in `<action>` do not effect to the calling action list
- /localize: q-registers are saved before each `<action>` is run, and restored after it completes
- /clearreg: q-registers are all reset before each `<action>` is run. Most useful when used in combination with /localize.

`@switch/inplace` is an alias for `@switch/inline/nobreak/localize`.

See [@switch3] for examples.

## See Also
- [SWITCH WILDCARDS]
- [switch()]
- [@if]
- [@break]
- [stext()]
- [slev()]

