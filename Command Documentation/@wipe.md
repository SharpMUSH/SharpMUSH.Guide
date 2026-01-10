# @wipe
`@wipe <object>[/<attribute pattern>]`

This command clears attributes from `<object>`, with the exception of attributes changeable only by wizards, and attributes not controlled by the object's owner (i.e. locked attributes owned by someone else). Only God may use @wipe to clear wiz-changeable-only attributes. The SAFE flag protects objects from @wipe.

If no `<pattern>` is given, this gets rid of all the attributes, with exceptions as given above. If `<pattern>` is given, it gets rid of all attributes which match that pattern. Note that the restrictions above still apply.

When wiping an attribute that is the root of an attribute tree, all attributes in that tree will also be removed.

