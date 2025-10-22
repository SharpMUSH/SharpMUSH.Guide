# @switch
# @select
`@switch[/<switch>] <string>=<expr1>, <action1> [,<exprN>, <actionN>]... [,<default>]`
`@select <string>=<expr1>, <action1> [,<exprN>, <actionN>]... [,<default>]`

For those of you familiar with programming, these command acts like if/then/else or switch/case. It compares `<string>` against whatever each `<expr>` evaluates to. If `<string>` and `<expr>` match, the action list associated with that `<expr>` is carried out. If no match is found, the `<default>` action list is carried out. @switch runs `<action>`s for all matching `<expr>`s by default, while @select only runs the `<action>` for the first matching `<expr>`.

If `<expr>` is a regexp or a wildcard glob, then $0-$9 will be set with capture data. (In wildcard globbing, every wildcard captures.)

The string "#$" in `<action>`'s will be replaced with the evaluated result of `<string>` before it is acted on. Note that this replacement happens BEFORE the `<action>` is queued and executed, and does not work well in nested switches. It is recommended that you use the %$N substitution, or the stext() function, instead.

`@switch/all` runs `<action>`s for all matching `<expr>`s. Default for @switch.
`@switch/first` runs `<action>` for the first matching `<expr>` only. Same as @select, and often the desired behaviour.
`@switch/notify` queues "@notify me" after the last `<action>`.
`@switch/inline` runs all actions in place, instead of creating a new queue entry for them.
`@switch/regexp` makes `<expr>`s case-insensitive regular expressions, not wildcard/glob patterns.

See [@switch2].
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

