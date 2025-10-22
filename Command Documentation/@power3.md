# @power3
`@power/add` is used to add a new power with the given name. Arguments other than the power name are optional:

`<letter>` gives the power's one-letter abbreviation, which must not conflict with the one-letter abbreviation of another power that could be applied to the same object type(s). It defaults to none, which means it won't appear in a list of power characters but can still be tested for with haspower(), andlpowers(), and orlpowers().
`<type>` specifies the space-separated list of types to which the power applies, and may be 'any' or one or more of 'room', 'thing', 'player', or 'exit'. It defaults to 'any'.
`<setperms>` specifies the space-separated list of permissions for who can set and/or see the power. See [flag permissions] for details. It defaults to 'any'
`<unsetperms>` specifies the space-separated list of permissions for who can clear the power on an object they control. It defaults to whatever `<setperms>` is given, or 'any'.

Powers added with `@power/add` are saved with the database when it is dumped, and do not need to be re-added at startup. They are treated exactly as any other power in the server.

