# @backup
`@backup`<br>
`@backup/list`

Wizard-only. Takes a copy of the world, into a timestamped directory under the game's backup
directory, and reports the name and size of what it wrote. This is a SharpMUSH command; PennMUSH
has no equivalent, because PennMUSH holds the database in memory and `@dump` writes it out.

The game keeps running throughout. The copy is a snapshot as of the moment it starts: everything
committed before then is in it, nothing after. It is written aside and moved into place only once
complete, so a backup tool reading the directory never sees a half-written one.

`@backup/list` reports the copies currently on disk, newest first, without taking one.

What a copy is depends on the database. LMDB copies its environment with its own routine, which is a
point-in-time snapshot by construction. SurrealDB produces a complete, restorable logical export from
the running game.

Older copies are deleted as new ones arrive, keeping a configured number. How many, where they go,
and whether one is also taken automatically on an interval are deployment settings on the server
process, not `@config` options. See `deploy/README.md`.


**See Also:**
- [@dump]
- [@shutdown]

