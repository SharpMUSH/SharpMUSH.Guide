# create()
`create(<object>[, <cost>[, <dbref>]])`

   This function creates an object with name `<object>`, and returns the dbref number of the created object. It returns #-1 on error. The `<cost>` argument is accepted but ignored.

   Wizards and objects with the PICK_DBREFS power may also specify an unused `<dbref>` for the new object.


::: seealso
- [@create]
- [PCREATE()]
- [DIG()]
- [OPEN()]
:::

