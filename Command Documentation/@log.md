# @log
`@log[/<switch>] <message>`<br>
`@log/recall/<switch> [<number>]`

This command writes `<message>` to the server log, tagged with the object executing the command. It needs the `server.operate` permission. The available switches are /check, /cmd, /conn, /err, /trace, and /wiz, specifying which log category to use. /cmd is default.

Adding the `/recall` switch displays the last `<number>` entries in that category: 100 if omitted, and at most 1000.


::: seealso
- [@logwipe]
:::

