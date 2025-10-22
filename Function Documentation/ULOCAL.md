# ULOCAL()
`ulocal([<object>/]<attribute>[, <arg0>[, ... , <arg29>]])`

  The ulocal() function is similar to ufun(); it evaluates `<attribute>` on `<object>` (or the caller, if no `<object>` is given), passing up to thirty `<arg>`s. However, before evaluating the attribute, ulocal() stores all the global q-registers (%q0-%q9, %qa-%qz), in the same way as the localize() function, and restores them after the attribute is evaluated. It's useful when you need to evaluate an attribute on an untrusted object which might alter the values of the registers.

  See [ulocal2] for examples.

