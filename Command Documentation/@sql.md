# @sql
`@sql <query>`

This command issues an SQL query if the MUSH supports SQL and can connect to an SQL server. You must be WIZARD or have the Sql_Ok power to use @sql.

Generally, the sql() function is more useful for coding, as it delimits its return values, but @sql is handy for INSERT-type queries and quick checks. If you pass arbitrary data to @sql, be sure you call sqlescape() on it; see the example in help sql().

Example:
```
> @sql SHOW TABLES
```


## See Also
- [sql()]
- [sqlescape()]
- [mapsql()]
- [@mapsql]

