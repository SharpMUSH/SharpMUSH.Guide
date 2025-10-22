# @logwipe
`@logwipe/<log>[/<switch>] <password>`

This God-only command erases one of the MUSH logs.

`<log>` specifies which log file to erase, and must be one of:
/check, /cmd, /conn, /err (Default), /trace, and /wiz.

The default policy of erasing a log can be changed by giving one of the following switches:

- /rotate : copies the log to a backup file and then erases it.
- /trim : deletes all but the most recent lines in the file.
- /wipe : erases the file (Default)

God must give the log wipe password from the MUSH's configuration file to use this command.


## See Also
- [@log]

