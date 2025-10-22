# ATTRIB_SET()
`attrib_set(<object>/<attrib>[, <value>])`

  Sets or clears an attribute. With a `<value>`, it sets the attribute, without one, it clears the attribute. This is an easier-to-read replacement for the old set(`<object>`, `<attrib>`:`<value>`) notation, and a less destructive replacement for wipe() that won't destroy entire attribute trees in one shot.

  If there is a second argument, then attrib_set() will create an attribute, even if the second argument is empty (in which case attrib_set() will create an empty attribute). If the empty_attrs configuration option is off, the attribute will be set to a single space. This means that attrib_set(me/foo,%0) will _always_ create an attribute.


## See Also
- [set()]
- [@set]

