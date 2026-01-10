# DEFAULT()
`default([<obj>/]<attr>[, ... ,[<objN>]/<attrN>], <default>)`

  This function returns the value of the first possible `<obj>`/`<attr>`, as if retrieved via the get() function, if the attribute exists and is readable by you. Otherwise, it evaluates `<default>`, and returns that. Note that `<default>` is only evaluated if none of the given attributes exist or can be read. Note further than an empty attribute counts as an existing attribute.

  This is useful for code that needs to return the value of an attribute, or an error message or default case, if that attribute does not exist.

  Examples:
```
&TEST me=apple orange banana
say default(me/Test, No fruits!)
You say "apple orange banana"
```
```
    > &TEST ME
    > say default(me/Test, No fruits!)
    You say "No fruits!"
```

## See Also
- [get()]
- [hasattr()]
- [ufun()]
- [edefault()]
- [udefault()]
- [uldefault()]
- [strfirstof()]

