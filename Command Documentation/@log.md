# @log
`@log[/<switch>] <message>`
`@log/recall/<switch> [<number>]`

This wizard-only command puts `<message>` in a log file, tagged with the time and object executing the command. The available switches are /check, /cmd, /conn, /err, /trace, and /wiz, specifying which file to log to. /cmd is default.

Adding the `/recall` switch will display the last `<number>` lines written to that log file, or the entire log buffer (Which is the last 1 kilobyte or so of data written to the log) if omitted.


## See Also
- [@logwipe]

