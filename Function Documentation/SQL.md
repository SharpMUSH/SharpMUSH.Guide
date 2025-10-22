# SQL()
`sql(<query>[, <row separator>[, <field separator>[, <register>]]])`

  Performs an SQL query if the MUSH is configured to connect to an SQL database server. This function requires a WIZARD flag or the Sql_Ok power.

  By default, SELECT queries will return their data space-separated. Usually, it's more useful to specify a character to delimit rows returned (and sometimes another character to delimit the fields/columns returned, if they may contain spaces).

  `<query>` is evaluated, so it's useful to either read it from another attribute with u() or use lit() to protect commas. If you will be interpolating user-provided values into the query, be careful to escape them with sqlescape().

  A query that doesn't return any rows, such as an UPDATE or SELECT that has no matches will return a null string.

  If `<register>` is specified, and `<query>` alters the database (such as an UPDATE or INSERT query), there is a side-effect: the number of affected rows is stored into the specified q-register.

  See [sql examples] for examples.


## See Also
- [sqlescape()]
- [mapsql()]
- [@sql]
- [setq()]
- [r()]
- [@mapsql]

