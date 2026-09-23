# @logwipe
`@logwipe/<log>[/<switch>] <password>`

In PennMUSH this God-only command erases one of the game's log files: `<log>` is one of /check, /cmd, /conn, /err (default), /trace or /wiz, and the policy is /rotate, /trim or /wipe (default).

SharpMUSH owns no log files. Its logs go to the logging sinks named in its configuration (the console, by default), and rotating, trimming or clearing them is done there. @logwipe therefore performs no operation: it tells God which policy on which log cannot be carried out, returns `#-1 NOT SUPPORTED`, and records the attempt in the server log.


**See Also:**
- [@log]

