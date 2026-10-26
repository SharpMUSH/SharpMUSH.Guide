# render()
`render(<string>, <formats>)`

  This function renders the given `<string>` into a given format. Most useful when coding bots, or inserting text into an SQL database to display on a website. `<formats>` is a space-separated list of one or more of the following:

    ansi      --  Convert colors to raw ANSI tags (requires Can_Spoof power)<br>
    html      --  Escape HTML entities (< to &lt;, etc) and convert Pueblo to HTML tags<br>
    markdown  --  Write the string as Markdown, with highlighting as bold and a table as a pipe table<br>
    noaccents --  Downgrade accented characters, as per stripaccents()<br>
    markup    --  Accepted for compatibility; it has no effect

  Examples:
```sharp
say render(<Test 1> & [tagwrap(u,Test 2)], html)
You say, "&lt;Test 1&gt; &amp; \<u\>Test 2</u>"
```


::: seealso
- [STRIPACCENTS()]
- [STRIPANSI()]
- [pueblo]
- [@sql]
- [TAGWRAP()]
- [json()]
:::

