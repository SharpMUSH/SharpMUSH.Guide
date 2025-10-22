# FN2
  If `<obj>` is specified, the built-in function will be executed as `<obj>`, rather than as the object which called fn(). This is useful when using fn() to replace a side-effect function, to ensure priviledge checks, etc, are done correctly. You must control `<obj>`, or (if function side effects are disabled) must be see_all.

  When an `<obj>` is given, debug information is automatically suppressed when evaluating the built-in function.

  Example:
```
&BRIGHT_PEMIT #10=fn(%@/pemit, %0, -->[ansi(h,%1)]))
@function/delete PEMIT
@function PEMIT=#10, BRIGHT_PEMIT
@lock/page *Mike=!=*Padraic
```

    (As Padraic)
    > think pemit(me,test)
    -->test  (in highlighted letters)
    > think pemit(*Mike,test)
    (nothing happens)


## See Also
- [@function]
- [RESTRICT]
- [attribute flags]

