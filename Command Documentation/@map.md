# @map
`@map[/<switches>] <object>[/<attribute>]=<list>`

Runs an attribute once for each element of `<list>`, as [@dolist] does, but passing the element as `%0` rather than substituting it into the command text. The attribute is named as `<object>/<attribute>`.

With `/inline` or `/inplace`, `@map` outputs what the last command it ran output; queued, it outputs nothing. See [command output].

Switches are the queue-control set shared with [@dolist] and [@include]: `/inline`, `/inplace`, `/localize`, `/clearregs`, `/nobreak`, `/notify` and `/delimit`.

This is a SharpMUSH command; PennMUSH spells the same idea with [@dolist] and [MAP()].


::: seealso
- [@dolist]
- [@include]
- [MAP()]
- [@queue]
:::

