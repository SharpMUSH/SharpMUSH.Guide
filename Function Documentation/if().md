# if()
# ifelse()
`if(<condition>, <true expression>[, <false expression>])`<br>
`ifelse(<condition>, <true expression>, <false expression>)`

  These functions evaluate the `<condition>` and return `<true expression>` if the `<condition>` is true, or `<false expression>` (if provided) if the `<condition>` is false. Only the returned `<expression>` is evaluated.

  In the expression that is evaluated, "#$" stands for the evaluated `<condition>`, unless a switch() around or inside it names its own `<string>`. The value is never evaluated as code. The branch also counts as a switch on the `<condition>` for stext(), %$0 and slev(). See [compatibility parser in case and if].

```sharp
> think if(abc,You typed #$.)
You typed abc.
```


::: seealso
- [boolean values]
- [switch()]
- [@if]
- [@break]
- [COND()]
:::

