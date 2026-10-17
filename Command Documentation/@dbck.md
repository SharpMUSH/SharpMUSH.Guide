# @dbck
`@dbck`

Wizard-only. Reads every entry in every table of the newest backup of the world, and reports how
much it read. A copy LMDB cannot read fails the check now, rather than on the day you restore it.
The copy is opened read-only and never changed. A check that passes raises db\`dbck.

PennMUSH's `@dbck` checks the live database's links. SharpMUSH keeps its links consistent as it
writes them, so its `@dbck` checks the copy you would restore instead, and runs only when asked. Take
a copy with `@backup` first.

::: seealso
- [@backup]
- [event db]
:::

