# @dump
`@dump`
`@dump[/paranoid|/debug|/nofork] [<check interval>]`

This is a wizard-only command which saves a copy of the database from memory into the outdb file on disk. The MUSH saves the game automatically at a regular interval, controlled by the "dump_interval" @config option.

If the `/paranoid` switch is given, the game performs additional consistency checking which corrects possible data corruption in the copy of the db written to disk. If a check interval is specified, the game writes confirmation of the dump to the checkpoint log file every `<interval>` objects. If no interval is specified, it is taken to be the size of the database, divided by 5.

`@dump/debug` is the same as `@dump/paranoid`, but also attempts to fix any errors found in the running (in-memory) copy of the database. In order to do this safely, the dump will be a non-forking dump, even if the MUSH is configured to do forking dumps (see "@config forking_dump").

`@dump/nofork` does a normal, always non-forking dump.

These switches should ONLY be used if a normal @dump is not being done correctly. They should generally only be done by wizards with access to the account on which the MUSH is running, since others will not have access to the checkpoint log file.


## See Also
- [@shutdown]

