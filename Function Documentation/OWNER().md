# OWNER()
`owner(<object>[/<attribute>])`
`owner(<object>[/<attribute>], <new owner>[, preserve])`

  Given just an object, it returns the owner of the object. Given an object/attribute pair, it returns the owner of that attribute.

  If `<new owner>` is specified, the ownership is changed, as in @chown or @atrchown. If the optional third argument is "preserve", privileged flags and powers will be preserved ala @chown/preserve.
  If changing ownership, #-1 or 0 is returned on failure, 1 on success.


## See Also
- [lockowner()]
- [@chown]
- [@atrchown]


