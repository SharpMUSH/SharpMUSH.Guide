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

