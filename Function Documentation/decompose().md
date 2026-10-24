# decompose()
`decompose(<string>)`

  decompose() works like escape() with the additional caveat that it inserts parse-able characters to recreate `<string>` exactly after one parsing. It takes care of multiple spaces, '%r's, and '%t's.

  Example:
```sharp
think decompose(This is \[a [ansi(y,test)]\][space(3)])
This is \[a%b[ansi(y,test)]\] %b%b
```

  A marked list separator decomposes into the `%*<...>` that makes it: see [list separators].

```sharp
think decompose(a|b%*<|>c)
a|b%*<|>c
```

  A layout (box(), rule(), flex(), item(), figure(), fields(), tree(), node(), gauge(), bullets(), grid(), datatable(), datacolumns() and gradient()) decomposes into the call that builds it, with only the options that differ from the function's defaults. The game's layout_border and layout_theme are left out, so the call takes whatever the game has when it runs. A datacolumns() comes back as the datatable() it draws, and a badge() as its ansi().

```sharp
think decompose(box(Hello,Greeting,30,{{"border":"ascii"}}))
[box(Hello,Greeting,30,{{"border":"ascii"}})]
```


::: seealso
- [@decompile output switches]
- [ESCAPE()]
- [SECURE()]
:::

