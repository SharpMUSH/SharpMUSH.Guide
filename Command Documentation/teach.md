# teach
`teach <command>`
`teach/list <action list>`

The teach command shows its argument (unparsed) to others in your location, and then executes it as a command. If the `/list` switch is given, it will run an `<action list>` of commands in much the same way as @triggering an attribute. Otherwise, it executes a single `<command>`, exactly as if you'd entered `<command>` from your client. Useful for helping newbies and demonstrating commands.
```
> say To do a pose, use :<action>
You say "To do a pose, use :<action>"
> teach :waves hello.
Javelin types --> :waves hello.
Javelin waves hello.
```

```
> teach "[sort(c b a)]
Javelin types --> "[sort(c b a)]
Javelin says, "a b c"
```

```
> teach/list @switch 1=1, say Third; say First; @break 1; say Second
Javelin types --> @switch 1=1, say Third; say First; @break 1; say Second
You say, "First"
You say, "Third"
```


## See Also
- [@trigger]
- [@include]

