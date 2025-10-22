# CREATE()
`create(<object>[, <cost>[, <dbref>]])`

   This function creates an object with name `<object>` for `<cost>` pennies, and returns the dbref number of the created object. It returns #-1 on error.

   Wizards may also specify a `<dbref>`; if this refers to a garbage object, the new object is created with this dbref.


## See Also
- [@create]
- [pcreate()]
- [dig()]
- [open()]

