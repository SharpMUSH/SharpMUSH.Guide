# @power
`@power/list [<power name pattern>]`
`@power <power>`
`@power <object>=[!]<power>`

`@power/list` lists the defined powers (see [powers]). A list of standard powers with explanations is given in [powers list]. When given a power name as an argument, @power displays information
about a power.

The third form manipulates powers on objects, and is limited to Wizards. `@power <object>=[!]<power>` sets (or clears) the given power on an object.

God can add, delete, and otherwise manipulate power definitions. See help @power2 for these commands.


## See Also
- [powers()]
- [@flag]
# @power2
`@power/add <power>=[<letter>], [<type(s)>], [<setperms>], [<unsetperms>]`
`@power/delete <power>`
`@power/alias <power>=<alias>`
`@power/letter <power>[=<letter>]`
`@power/restrict <power>=[<setperms>], [<unsetperms>]`
`@power/type <power>=<type(s)>`
`@power/enable <power>`
`@power/disable <power>`

These commands manipulate power definitions. Only God may use them.
- /disable disables a power, making it invisible and unusable
- /enable re-enables a disabled power
- /alias adds a new alias for an existing power
- /letter changes or removes a single-letter alias for an existing power.
- /restrict changes power permissions (see help @power3)
- /type changes power type(s) (see help @power3)
- /delete deletes a power completely, removing it from all objects in the database and the removing it permanently from the power table. It requires the exact power name or alias to be used. Be very very careful with this.

See help @power3 for information on `@power/add`
# @power3
`@power/add` is used to add a new power with the given name. Arguments other than the power name are optional:

`<letter>` gives the power's one-letter abbreviation, which must not conflict with the one-letter abbreviation of another power that could be applied to the same object type(s). It defaults to none, which means it won't appear in a list of power characters but can still be tested for with haspower(), andlpowers(), and orlpowers().
`<type>` specifies the space-separated list of types to which the power applies, and may be 'any' or one or more of 'room', 'thing', 'player', or 'exit'. It defaults to 'any'.
`<setperms>` specifies the space-separated list of permissions for who can set and/or see the power. See [flag permissions] for details. It defaults to 'any'
`<unsetperms>` specifies the space-separated list of permissions for who can clear the power on an object they control. It defaults to whatever `<setperms>` is given, or 'any'.

Powers added with `@power/add` are saved with the database when it is dumped, and do not need to be re-added at startup. They are treated exactly as any other power in the server.

