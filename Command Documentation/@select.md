# @select
`@switch[/<switch>] <string>=<expr1>, <action1> [,<exprN>, <actionN>]... [,<default>]`
`@select <string>=<expr1>, <action1> [,<exprN>, <actionN>]... [,<default>]`

For those of you familiar with programming, these command acts like if/then/else or switch/case. It compares `<string>` against whatever each `<expr>` evaluates to. If `<string>` and `<expr>` match, the action list associated with that `<expr>` is carried out. If no match is found, the `<default>` action list is carried out. @switch runs `<action>`s for all matching `<expr>`s by default, while @select only runs the `<action>` for the first matching `<expr>`.

If `<expr>` is a regexp or a wildcard glob, then $0-$9 will be set with capture data. (In wildcard globbing, every wildcard captures.)

The string "#$" in `<action>`'s will be replaced with the evaluated result of `<string>` before it is acted on. Note that this replacement happens BEFORE the `<action>` is queued and executed, and does not work well in nested switches. It is recommended that you use the %$N substitution, or the stext() function, instead.

`@switch/all` runs `<action>`s for all matching `<expr>`s. Default for @switch.
`@switch/first` runs `<action>` for the first matching `<expr>` only. Same as @select, and often the desired behaviour.
`@switch/notify` queues "@notify me" after the last `<action>`.
`@switch/inline` runs all actions in place, instead of creating a new queue entry for them.
`@switch/regexp` makes `<expr>`s case-insensitive regular expressions, not wildcard/glob patterns.

See [@switch2].

