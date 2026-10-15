# objevals()
`objevals(<object>, <text>)`

  Evaluates `<text>` like any other argument, then evaluates what it gives from the viewpoint of `<object>`, under the same rules as `objeval()`: you must control `<object>` (or, when side-effect functions are off, have the see_all power), or the text evaluates with your privileges. Use it on text that holds code, such as a register or attribute filled with what a player typed, where `objeval()` would only substitute the register and give the code back unevaluated.

```sharp
&DATA`TEXT me=[add(1,2)] for %n
think objeval(me,v(DATA`TEXT))
think objevals(me,v(DATA`TEXT))
```

  Output: `[add(1,2)] for %n` from `objeval()`, then `3 for` and your name from `objevals()`.

::: seealso
- [OBJEVAL()]
- [S()]
:::

