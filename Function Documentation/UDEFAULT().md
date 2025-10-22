# UDEFAULT()
# ULDEFAULT()
`udefault([<object>/]<attribute>, <default case>[, <arg0>[, ... , <arg29>]])`
`uldefault([<object>/]<attribute>, <default case>[, <arg0>[, ... <arg29>]])`

  If the given `<attribute>` on `<object>` (or the caller, if no `<object>` is given) can be read, the attribute is evaluated, and the result returned. Up to thirty `<arg>`s can be passed to the attribute, as per ufun().

  If the attribute cannot be read, `<default case>` is evaluated and returned instead. The `<default case>` is not evaluated if the attribute exists.

  uldefault() saves the global q-registers (%q0-%q9, %qa-%qz, etc) before evaluation, and restores them afterwards, as per ulocal().

  Examples:
```
&TEST me=center(%0,5,*)
say udefault(Test,-- BOOM --,ACK)
You say "*ACK*"
&TEST me
say udefault(me/Test,-- BOOM --,ACK)
You say "-- BOOM --"
```


## See Also
- [get()]
- [eval()]
- [ufun()]
- [default()]
- [edefault()]
- [ulocal()]
- [localize()]

