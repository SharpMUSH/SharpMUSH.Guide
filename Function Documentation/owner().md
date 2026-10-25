# owner()
`owner(<object>[/<attribute>][, <new owner>[, preserve]])`

  Given just an object, it returns the owner of the object. Given an object/attribute pair, it returns the owner of that attribute, or #-1 if the attribute is missing or you cannot read it.

  Given a `<new owner>`, owner() changes the owner as @chown does, or as @atrchown does for an object/attribute pair, and returns 1 if it changed and 0 if it did not. `preserve` is @chown/preserve. Changing ownership needs function side effects and permission to use @chown.


::: seealso
- [LOCKOWNER()]
- [@chown]
- [@atrchown]
:::


