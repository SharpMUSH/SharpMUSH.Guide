# @dump
`@dump`<br>
`@dump[/paranoid|/debug|/nofork] [<check interval>]`

Wizard-only. Takes a backup of the world, as `@backup` does. In PennMUSH, `@dump` writes the database
from memory to disk; a SharpMUSH game commits every change as it is made, so the game on disk is
already current and a copy of it is the dump. The switches and check interval are accepted for
PennMUSH code and ignored.

Everyone sees dump_message as the copy starts and dump_complete when it is written, and the dump
events are raised (see [event dump]). Scheduled copies run every SHARPMUSH_BACKUP_INTERVAL, a server
setting, rather than PennMUSH's dump_interval.


::: seealso
- [@backup]
- [@shutdown]
:::

