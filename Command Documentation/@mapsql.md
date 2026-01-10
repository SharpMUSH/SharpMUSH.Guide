# @mapsql
`@mapsql[/notify][/colnames][/spoof] <obj>/<attr>=<query>`

This command issues an SQL query if the MUSH supports SQL and can connect to an SQL server. You must be WIZARD or have the Sql_Ok power to use @sql.

For each row returned by the query, the action list in `<obj>/<attr>` is queued, with row number passed as %0 and the columns passed as %1-%9 and v(10) to v(29). Row numbers start at 1. The MUSH will also set named arguments, with arg names matching the SQL field names. These are accessible as `r(<name>, arg)`.

The `/notify` switch causes the executor to do queue "@notify me" after all the rows are processed. Note that this is the object running "@mapsql", and not `<obj>`.

The `/colnames` switch causes @mapsql to first queue the obj/attr with row number (%0) set to 0 and args %1 to v(29) being the column names.

By default, the object using @mapsql will be the enactor (%#) for the triggered attribute. However, if you control `<object>`, the `/spoof` switch can be used to preserve the current enactor.

Examples:
```
> &desctable me=think align(30 20 4 10 10,%0,%1,%2,%3,%4)
> @mapsql me/desctable=DESCRIBE table_name
```

```
> &showresult me=@pemit %#=%0. [r(name, arg)] ([r(age, arg)])
> @mapsql me/showresult=SELECT `name`, `age` FROM `people`
```


## See Also
- [@sql]
- [sql()]
- [sqlescape()]
- [mapsql()]

