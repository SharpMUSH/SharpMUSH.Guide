# timezone()
`timezone(<object>)`

  Returns the time zone time(`<object>`) uses, as its TZ attribute names it: the object's own TZ, or, for a player with none, the TZ of the player's account. It reads TZ as get() does. It returns nothing when neither has a TZ, which is when time() uses the server's zone. `<object>` may also be an account, `#acct:<key>`.

  A TZ that is not visual is read only by those who may examine its holder. To anyone else timezone() returns #-1 NO PERMISSION TO GET ATTRIBUTE, and time() uses the server's zone. A player whose own TZ you may not read does not show you the account's either.

  Example, for a player whose account keeps the zone:
```sharp
think timezone(*Ariel)
Europe/Paris
```

::: seealso
- [time()]
- [timezones]
- [accounts attributes]
:::

