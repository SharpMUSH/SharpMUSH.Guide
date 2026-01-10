# SQLESCAPE()
`sqlescape(<string>)`

  This function performs SQL-server-implemented escaping of `<string>`. It's important to escape arbitrary data before passing it to the sql() and mapsql() functions, or @sql command, to prevent SQL injection attacks.

  Example:
```
think sqlescape(You don't say)
You don\'t say
```

    OR

    You don''t say


  When used in an SQL query, the results of an sqlescape() function should be enclosed in single quotes.

  You must be a WIZARD or have the Sql_Ok power to use this function.


## See Also
- [sql()]
- [mapsql()]
- [@sql]
- [@mapsql]

