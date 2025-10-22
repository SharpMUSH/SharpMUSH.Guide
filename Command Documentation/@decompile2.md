# @decompile2
@decompile takes the following switches, which can be combined:

`@decompile/name`
This switch causes @decompile to use the object's name, instead of its dbref. This is the default.
`@decompile/db`
This switch makes @decompile use the object's dbref instead of its name, which is useful for editing code off-MUSH.
`@decompile/flags`
Only the code to @create the object and set flags/powers/locks is printed. When an `<attribute pattern>` is given, this switch is ignored, and @decompile only prints the matching attributes.
`@decompile/attribs`
Only the code to set the object's attributes is printed. Same as `@decompile <object>/**`
`@decompile/skipdefaults`
Don't output commands to set attribute flags if those flags are the defaults for that attribute on that MUSH.
`@decompile/tf`
Explained in [@decompile3].

See [@decompile3].

