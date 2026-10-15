# syntaxdiagnostics()
`syntaxdiagnostics(<object>/<attribute>[, function|command])`

  Reads stored softcode without evaluating it and returns a JSON array of parser diagnostics. Each
  diagnostic contains `severity`, `line`, `column`, and `message`; line and column numbers start at
  1. An empty array means the source is syntactically valid.

  If the type is omitted, the function infers it from the attribute's `FUNSYNTAX` or `CMDSYNTAX`
  flag. This checks syntax only; it does not prove that the code will succeed at runtime.

```sharp
&TOTAL me=add(1,2)
think syntaxdiagnostics(me/TOTAL,function)
```

  Output: `[]`, since the code parses.

::: seealso
- [@editor]
- [GET()]
- [attribute flags]
:::

