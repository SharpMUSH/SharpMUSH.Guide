# @flag2
`@flag/add` is used to add a new flag with the given name. Arguments other than the flag name are optional:

`<letter>` gives the flag's one-letter abbreviation, which must not conflict with the one-letter abbreviation of another flag that could be applied to the same object type(s). It defaults to none, which means it won't appear in a list of flag characters but can still be tested for with hasflag(), andlflags(), and orlflags().
`<type>` specifies the space-separated list of types to which the flag applies, and may be 'any' (the default) or one or more of 'room', 'thing', 'player', or 'exit'.
`<setperms>` specifies the space-separated list of permissions for who can set and/or see the flag. See [flag permissions] for details. It defaults to 'any'
`<unsetperms>` specifies the space-separated list of permissions for who can clear the flag on an object they control. It defaults to whatever `<setperms>` is given, or 'any'.

Flags added with `@flag/add` are saved with the database when it is dumped, and do not need to be re-added at startup. They are treated exactly as any other flag in the server.

