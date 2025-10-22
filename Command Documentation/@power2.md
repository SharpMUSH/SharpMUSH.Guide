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

