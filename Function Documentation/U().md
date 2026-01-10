# U()
# UFUN()
# ULAMBDA()
`ufun([<object>/]<attribute>[, <arg0>[, ... , <arg29>]])`
`ulambda([<object>/]<attribute>[, <arg0>[, ... , <arg29>]])`

  ufun() evaluates `<attribute>` on `<object>` (or on the caller, if no `<object>` is given), and returns the result. Up to 30 `<arg>`s can be passed, available to the attribute as %0, %1, up to %9, and v(10) to v(29). This can be used to create "user defined functions".

  u() is an alias for ufun(), for TinyMUSH compatability.

  ulambda() is the same, but accepts anonymous attributes. See [lambda].

  See [ufun2].

