# @sitelock3
If you specify a character name after the options, the options are only checked if the host pattern matches, AND the character being checked for connect support matches the one you gave. Use it only with connect and !connect options, since they're the only ones where an existing character is used.

For example, to disallow anyone from connecting to 'Twink' from one domain, but to allow connections to the character from others, use something like:
```
> @sitelock *.somesite.com=!connect,Twink
```

If you want to disallow connections to a character from anywhere, use @newpassword or `@sitelock *=!connect,Twink`.

`@sitelock/remove` will delete entries that were added with @sitelock if their host-pattern matches `<string>` exactly. If the `/player` switch is given, `<string>` is treated as a player name, and entries whose host-patterns match the player's LASTIP or LASTSITE addresses exactly will be deleted.

