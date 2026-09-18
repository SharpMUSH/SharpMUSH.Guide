# @map
`@map[/<switches>] <object>[/<attribute>]=<list>`

Runs an attribute once for each element of `<list>`, as [@dolist] does, but passing the element as `%0` rather than substituting it into the command text. The attribute is named as `<object>/<attribute>`.

Switches are the queue-control set shared with [@dolist] and [@include]: `/inline`, `/inplace`, `/localize`, `/clearregs`, `/nobreak`, `/notify` and `/delimit`.

This is a SharpMUSH command; PennMUSH spells the same idea with [@dolist] and [map()].


**See Also:**
- [@dolist]
- [@include]
- [map()]
- [QUEUE CONTROL]

