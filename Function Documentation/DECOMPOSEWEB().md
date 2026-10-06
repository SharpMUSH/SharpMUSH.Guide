# DECOMPOSEWEB()
`decomposeweb(<string>)`

  Returns `<string>` as HTML, ready to place in a web page. Characters such as `<` and `&` in the text are encoded, and colour, links, tags and other markup are written as the HTML the web portal uses for them.

  Example:
```sharp
think decomposeweb(a<b> [ansi(hr,red)])
a&lt;b&gt; <span style="color: #ff5555">red</span>
```

  This is a SharpMUSH function; PennMUSH has no decomposeweb().


::: seealso
- [DECOMPOSE()]
- [ansi()]
- [RENDER()]
:::

