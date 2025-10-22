# @aidescribe
`@idescribe <object>[=<description>]`
`@oidescribe <object>[=<message>]`
`@aidescribe <object>[=<action list>]`

@idescribe command sets the internal description for an object, which is shown to anyone who enters or looks while inside the object. It's only used for players and things; rooms and exits always use @describe.

The @oidescribe attribute is shown to others inside `<object>` when someone looks at the @idescribe, and the @aidescribe is triggered when someone lookst at the @idescribe.

If there is no IDESCRIBE set for an object, those who enter or look inside it will see its @describe. In this case, others in the object will see nothing, and the @aidescribe will not be triggered. If you want to use @aidescribe without @idescribe, set @idescribe to a blank string, or to u(describe) to show the description.


## See Also
- [enter]
- [@enter]
- [ENTER_OK]
- [@describe]
- [look]
- [@idescformat]
- [VERBS]

