# @purge
`@purge`<br>
`@purge[/confirm] #<number>`<br>
`@purge[/confirm] /all|/time <days>|/type <type>|/owner <player>`

Needs the `server.operate` permission. With nothing after it, @purge runs the purge pass at once: objects marked GOING are set GOING_TWICE, and those already GOING_TWICE are freed onto the recover list (see [@recover]). The pass runs on its own every purge_interval, so this is rarely needed.

`@purge #<number>` removes one recover entry for good and frees its number. A kept entry needs `/confirm`. Anyone allowed to pick a dbref can then ask for the number (`@create <name>=<cost>,#<number>`), but nothing takes it unasked before the entry would have expired (see [garbage]).

`/all` covers every entry, `/time <days>` those destroyed at least that many days ago, `/type` PLAYER, ROOM, THING or EXIT, and `/owner` those a player owned. Without `/confirm` it only lists what it would remove. With `/confirm` the world is copied first, as before a package change, and then the entries go. Kept entries are always left alone.

Example:
```
> @purge/time 90
> @purge/confirm/time 90
```

::: seealso
- [@recover]
- [@destroy]
- [@dbck]
:::

