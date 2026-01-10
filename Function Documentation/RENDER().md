# RENDER()
`render(<string>, <formats>)`

  This function renders the given `<string>` into a given format. Most useful when coding bots, or inserting text into an SQL database to display on a website. `<formats>` is a space-separated list of one or more of the following:

    ansi      --  Convert colors to raw ANSI tags (requires Can_Spoof power)
    html      --  Escape HTML entities (< to &lt;, etc) and convert Pueblo to HTML tags
    noaccents --  Downgrade accented characters, as per stripaccents()
    markup    --  Leave any markup not already converted by ansi/html as internal markup tags. Without this, unhandled markup
                  will be stripped, as per stripansi()

  Examples:
```
say render(<Test 1> & [tagwrap(u,Test 2)], html)
You say, "&lt;Test 1&gt; &amp; <u>Test 2</u>"
```


## See Also
- [stripaccents()]
- [stripansi()]
- [Pueblo]
- [@sql]
- [tagwrap()]
- [json()]

