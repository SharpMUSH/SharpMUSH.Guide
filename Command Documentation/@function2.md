# @function2
`<object>` can be anything that the player using the @function command controls (if safer_ufun is enabled) or can examine (if not). `<function name>` must be 30 characters or less.

A function defined using @function works just like any of the normal MUSH functions, from the user's perspective. The functions are executed by the object, with its powers.

Functions defined via @function should follow the format used by UFUN() - %0 is the first argument passed, %1 is the second argument passed, and so forth. Optional third and fourth arguments to @function can be used to set a parser-enforced number of arguments for the function. If the maximum arguments is negative, any additional arguments are treated as part of the text of the last argument. Note that this behaviour is deprecated, and will be removed in the near future.

An optional fifth argument will set restriction flags.

The `/preserve` switch, for MUX compability, does the same thing as the 'localize' restriction - treats the attribute that's evaluated as if it were called with ulocal() instead of u().

Example:
```
> &WORD_CONCAT #10=%0 %1
> say u(#10/word_concat, foo, bar)
You say, "foo bar"
```

```
> @function word_concat=#10, word_concat
> say word_concat(foo,bar)
You say, "foo bar"
```

See [@function3].

