# CLONE()
`clone(<object>[, <new name>[, <dbref>[, preserve]]])`

  This function clones `<object>`, as per @clone, and returns the dbref number of the clone, or #-1 if the object could not be cloned.

  The clone will have the same name as the original object unless you give a `<new name>` for it. Normally, the clone will be created with the first available dbref, but wizards and objects with the pick_dbref power may give the `<dbref>` of a garbage object to use instead.

  If the optional fourth argument is the string preserve, acts as @clone/preserve.
  Note: If @create or @clone is restricted or disabled, clone() will also be restricted/disabled.


## See Also
- [@clone]
- [create()]
- [dig()]
- [open()]

