# @function
`@function [<function name>]`
`@function[/preserve] <name>=<obj>, <attrib>[, <min args>, <max args>[, <restrictions>]]`
`@function <function name>=<object>/<attribute>`
`@function/<switch> <function name>`
`@function/restrict[/builtin] <function name>=<restrictions>`
`@function/alias <function name>=<alias>`
`@function/clone <function name>=<clone>`

When used without any arguments, this command lists all global user-defined functions. For wizards and others with the Functions power, it also lists the dbref number and attribute corresponding to the listed functions.

When used with a function name, it displays some information about how that function is parsed, and how many arguments it takes.

`<switch>` can be one of:
- /disable, to disable a function.
- /enable, to re-enable it.
- /delete, to remove a user-defined or cloned function, or allow a built-in function to be overriden by a user-defined one.
- /restrict, to change the restriction flags on an existing function.

`@function/alias` creates an alias for the built-in function `<function name>` so that it can also be called as `<alias>`. `@function/clone` creates a new copy of `<function name>` named `<clone>`, which works the same initially but can be restricted separately. You cannot alias or clone @functions, or alias cloned functions.

Otherwise, this command defines a global function with the name `<function name>`, which evaluates to `<attribute>` on `<object>`.

See [@function2].

