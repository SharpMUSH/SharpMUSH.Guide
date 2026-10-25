# sqlescape()
`sqlescape(<string>)`

  This function performs SQL-server-implemented escaping of `<string>`. It's important to escape arbitrary data before passing it to the sql() and mapsql() functions, or @sql command, to prevent SQL injection attacks. Like sql(), it needs the SQL_OK power.

  Example:
```sharp
think sqlescape(You don't say)
You don\'t say
```

    OR

    You don''t say


  When used in an SQL query, the results of an sqlescape() function should be enclosed in single quotes.

  Anyone may use this function. If SQL is not enabled, it returns #-1 SQL IS NOT ENABLED.


::: seealso
- [SQL()]
- [MAPSQL()]
- [@sql]
- [@mapsql]
:::

