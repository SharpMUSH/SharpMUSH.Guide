# HASATTR()
# HASATTRP()
# HASATTRVAL()
# HASATTRPVAL()
`hasattr(<object>, <attribute>)`
`hasattrp(<object>, <attribute>)`
`hasattrval(<object>, <attribute>)`
`hasattrpval(<object>, <attribute>)`

  The hasattr*() functions check to see if `<object>` has a given attribute. They return #-1 if the object does not exist or the attribute can't be examined by the player. Otherwise, they return 1 if the attribute is present and 0 if it is not.

  hasattr() checks to see if `<attribute>` exists on `<object>` only.

  hasattrp() also checks for `<attribute>` on `<object>`'s parent/ancestor.

  hasattrval() only returns 1 if `<attribute>` exists and is non-empty. An "empty" attr is one containing a null value (if the empty_attrs config option is on), or one containing a single space (if the option is off).

  hasattrpval() is like hasattrval() but also checks parents.

  All four functions will also work with one argument in the form of `<object>`/`<attribute>`.


## See Also
- [visible()]
- [lattr()]

