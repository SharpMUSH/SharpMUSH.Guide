# @force
`@force[/noeval][/inline] <object>=<action list>`

This command forces `<object>` to queue the given action list, as if the object had entered the action list itself. You must control `<object>` to @force it. @force is useful for manipulating puppets.

If `/inline` is given, `<object>` will run `<action list>` _now_, instead of being queued for execution later. By default, `<action list>` will be able to see/alter q-registers in the calling action list, and any @breaks in `<action list>` will also stop the calling action list. The following switches alter that behaviour:
- /nobreak: @breaks in `<action list>` will not stop the calling action list.
- /localize: q-registers will be saved before `<action list>` is run, and restored after.
- /clearregs: q-registers will all be reset before `<action list>` is run. You'll usually want to use /localize as well with this.

`@force/inplace` is an alias for `@force/inline/nobreak/localize`.

@force can be abbreviated as
`<dbref> <action list>`

See [@force2].

