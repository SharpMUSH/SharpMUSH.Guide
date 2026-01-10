# @chown
`@chown[/preserve] <object>=<player>`
`@chown <object>/<attribute>=<player>`

Changes the ownership of `<object>` to `<player>`. You can chown things, rooms or exits. Players can't be @chown'd - they always own themselves. To chown a thing, you have to be carrying it. If you do not own an object, you can only chown it if it has the CHOWN_OK flag and you pass its @lock/chown. If you're not a Wizard, you can only @chown objects to yourself or a Zone Master whose zone-lock you pass.

Normally, @chown'ing an object clears privileged flags and powers, and sets the object halt. Wizards can use `@chown/preserve` to avoid this. Doing this to an active object with queued commands is not recommended, and may have strange and insecure effects.

If `/<attribute>` is specified, it acts as an alias for @atrchown; see [@atrchown] for details.

Examples:
```
> @chown here=me (for a room)
> @chown box=Soundwave (for a thing)
```


## See Also
- [CHOWN_OK]
- [Zone Masters]
- [@chownall]
- [owner()]
- [@atrchown]

