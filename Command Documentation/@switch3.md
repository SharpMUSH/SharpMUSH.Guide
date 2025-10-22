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

