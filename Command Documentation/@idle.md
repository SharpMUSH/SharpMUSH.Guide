# @idle
`@idle <player>[=<message>]`

This message is sent in return to every page which successfully reaches you if it evaluates non-null. It is useful if you are idle for long periods of time and wish to inform people where you are, or if you are in a meeting and cannot quickly return pages.

Example:
```
> @idle me=switch(idle(me),>120,I'm idle. Use @mail)
```

Players paging me will only see the "I'm idle" message if I've been idle for over 2 minutes (120 seconds).


## See Also
- [@away]
- [@haven]

