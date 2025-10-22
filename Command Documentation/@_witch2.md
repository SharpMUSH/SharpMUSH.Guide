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
# @switch3
Examples:
```
> &SWITCH_EX thing=$foo *: @switch %0=*a*, :acks, *b*, :bars, :glurps
> foo abc
thing acks
thing bars
> foo xxx
thing glurps
```

```
> &SWITCH_EX thing=$foo *: @switch/first %0=*a*, :acks,*b*, :bars, :glurps
> foo abc
thing acks
```

```
> &SWITCH_EX thing=$test: @switch hasflag(%#,PUPPET)=1, say Puppet!, say Not Puppet!
> test
thing says, "Not Puppet!"
```

```
> &SWITCH_EX thing=$foo *: @switch %0=*a*,say Before: '$0'. After: '$1'
> foo foobarbaz
thing says, "Before: 'foob'. After: 'rbaz'
```

See [@switch4].
# @switch4
Examples:
```
> &SWITCH_EX me=$foo *:think before ; @switch %0=1,think one ; think after
> foo 1
thing before
thing after
thing one
```

```
> &SWITCH_EX me=$foo *:think before ; @switch/inline %0=1,think one ; think after
> foo 1
thing before
thing one
thing after
```

