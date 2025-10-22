# @set
`@set <object>=[!]<flag> [[!]<flag> ...]`
`@<pre-defined attribute> <object>=<value>`
`@set <object>=<attribute>:<value>`
`@set <object>/<attribute>=[!]<attrflag>`

The first form sets (or unsets) flag(s) on `<object>`. See [flags].
Ex: `@set me=VISUAL`
Flags may be specified by full name (recommended) or by flag character.
Flags are set or reset in the order supplied.

The second form sets a pre-defined attribute on `<object>`
Ex: `@fail Heavy Box=You can't pick that up.`

The third form sets an arbitrary attribute with `<value>` on `<object>`. You can also do this with `&<attribute> <object>=<value>`
Ex: `@set Test Object=random:This is a random attribute.`
`&random Test Object=This is a random attribute.`
An important difference between these two forms is that @set will always evaluate the `<value>` before setting it on `<object>`, while the `&<attribute>` form will not evaluate when entered directly by a player in his client (and is usually what you want).

The fourth form sets (or unsets) an attribute flag on the specified attribute. See [attribute flags].


## See Also
- [ATTRIB_SET]
- [attrib_set()]
- [set()]

