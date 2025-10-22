# SET()
`set(<object>[/<attribute>], <flag>)`
`set(<object>, <attribute>:<value>)`

  This function is equivalent to @set, and can be used to toggle flags and set attributes. The two arguments to the function are the same as the arguments that would appear on either side of the '=' in @set. This function returns nothing.

  The attribute-setting ability of set() is deprecated. You should use attrib_set() instead; it's easier to read, and allows you to clear attributes, too.


## See Also
- [attrib_set()]
- [@set]
- [wipe()]

