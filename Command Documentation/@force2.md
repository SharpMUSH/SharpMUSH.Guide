# @force2
Normally, the action list is evaluated twice - once when @force is run, and again when `<object>` runs the action list. If the `/noeval` switch is given, `<action list>` is not evaluated until it is run by `<object>`.

Examples:
```
> @create Lackey
Created: Object #103
> @force Lackey=go east
Lackey goes east.
Lackey has left.
> @force #103=page Cyclonus=Hi there!
Lackey pages: Hi there!
> #103 page Cyclonus=Whee
Lackey pages: Whee
```

See [@force3].

