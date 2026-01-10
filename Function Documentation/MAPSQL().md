# MAPSQL()
`mapsql([<object>/]<attribute>, <query>[, <osep>[, <dofieldnames>]])`

  Performs an SQL query if the MUSH is configured to connect to an SQL database server. This function requires a WIZARD flag or the Sql_Ok power.

  `<query>` is evaluated, so it's useful to either read it from another attribute with u() or use lit() to protect commas. If you will be interpolating user-provided values into the query, be careful to escape them with sqlescape().

  Each row of the result is passed to `<attribute>`, with the first nine columns available as %1-%9, and twenty more available via v(10) - v(29). %0 is set to the row number, which will start with 1. The fields will also be available as named arguments, with r(`<field name>`, args) returning the appropriate value.

  If `<dofieldnames>` evaluates to a true boolean, then the first call will be with row number (%0) set to 0, and %1-%9 and v(10) - v(29) will be set to the field names.

  See [sql examples] for examples.


## See Also
- [anonymous attributes]
- [sqlescape()]
- [sql()]
- [@sql]
- [@mapsql]

