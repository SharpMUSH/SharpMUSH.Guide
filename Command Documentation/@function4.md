# @function4
Normally, built in functions cannot be overriden by @functions. However, if a built-in function is deleted with `@function/delete`, you can then make a @function with the same name. "Deleted" built-ins can still be called through the FN() function, and can have restrictions applied with `@function/restrict/builtin`. `@function/restore` will delete the @function and turn the built in version back on.

Using @function on an already-added @function will delete the old one and install a new function with none of the settings of the old one kept.

Example:
```
> @function/delete ansi
> &ansi_fun #1234=%1
> @function ansi=#1234, ansi_fun, 2, -2, noguest
```

This creates a new version of ansi() that doesn't do any colorization, and that needs two arguments, like the built-in version. It will be restricted to non-guest players.


## See Also
- [RESTRICT]
- [FUNCTIONS]
- [@startup]
- [fn()]
- [valid()]

