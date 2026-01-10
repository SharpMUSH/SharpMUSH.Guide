# FN()
`fn([<obj>/]<function name>[, <arg0>[, ... , <argN>]])`

  fn() executes the built-in/hardcoded function `<function name>`, even if the function has been deleted or overridden with @function. It is primarily useful within @functions that override built-ins in order to be able to call the built-in.

  Example:
```
&BRIGHT_PEMIT #10=fn(pemit,%0,-->[ansi(h,%1)])
@function/delete PEMIT
@function PEMIT=#10,BRIGHT_PEMIT
think pemit(me,test)
-->test   (in highlighted letters)
```

  To restrict the use of fn() to @functions only (to prevent players from skirting softcoded replacements), use @function/restrict fn=userfn.

  To prevent deleted functions from being used with fn(), @function/disable them prior to deleting.

  See [fn2].

