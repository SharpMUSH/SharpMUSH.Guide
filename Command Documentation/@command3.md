# @command3
Examples:
```
> @create Dining Machine
> &eat dining=$eat *:@remit %L=%n takes a bite of %0.
> @command/add/noparse eat
> @hook/override eat=dining machine,eat
> eat meat loaf
Walker takes a bite of meat loaf.
> eat randword(apple tomato pear)
Walker takes a bite of randword(apple tomato pear)
```

```
> &drink dining=$^drink(/noeval)? (.*)$:@remit %L=%n drinks %2.
> @set dining/drink=regexp
> @command/add drink
> @hook/override drink=dining machine,drink
> drink reverse(tea)
Walker drinks aet.
> drink/noeval reverse(tea)
Walker drinks reverse(tea).
```

