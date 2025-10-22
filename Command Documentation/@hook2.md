# @hook2
In all cases, %# is the dbref of the object doing the command, and all hooks share the same set of q-registers. With `/before` and `/after`, the results of the evaluated attribute is thrown away like it was wrapped in a call of null(). Also, in cases where a command and function do the same thing (e.g., @pemit and pemit()), only the command gets the hooks.

A number of named registers are available in @hooks, accessible via `r(<name>, args)`, containing the arguments passed to the command. The exact registers available depend on the command type and the arguments passed; see [@hook7] for a description of all possible registers.

Hooks can also be set in the alias.cnf file.

Leaving out the object and attribute clears an existing hook. Wizards can see existing hooks with @command or `@hook/list`.

See [@hook3] for more information about `@hook/override/inline`, [@hook4] for information on `@hook/extend`, [@hook5] for examples, and 'help @hook7' for an list of available named registers.

