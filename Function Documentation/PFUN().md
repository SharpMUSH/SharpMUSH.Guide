# PFUN()
`pfun(<attribute>[, <arg0>[, ... , <arg29>]])`

  This function evaluates `<attribute>` from the caller's @parent, passing up to 30 `<arg>`s as %0-%9 and v(10)-v(29). When the caller doesn't have an `<attribute>` attribute set, this is the same as

`ufun(me/<attribute>[, <args>])`

  It differs from ufun() when the caller does have the attribute set - pfun() will ignore the attribute on the child, and evaluate the attribute as it would be inherited from the parent.

  Example:
```
@create ParentObject
@parent me=ParentObject
&foo me=ChildFoo
&foo ParentObject=ParentFoo
think ufun(me/foo)
ChildFoo
think pfun(foo)
ParentFoo
```

  See [pfun2].

