# EVAL()
# GET_EVAL()
`eval(<object>, <attribute>)`
`get_eval(<object>/<attribute>)`

  eval() and get_eval() are similar to ufun(), in that they evaluate the given `<attribute>` on `<object>`. However, they change the enactor (%#) to the object executing the eval (%!). It does not modify the stack (%0-%9), so the attribute being evaled sees the same values for them that the calling code does. Unless you need this behavior, it is better to use u() instead, which hides the caller's stack.

  Example:
```
&TEST Foo=%b%b%b-[name(me)] (%n)
&CMD Foo=$test: @emit ufun(me/test) ; @emit eval(me, test)
test
-Foo (Mike)
-Foo (Foo)
```


## See Also
- [get()]
- [u()]
- [xget()]
- [edefault()]

