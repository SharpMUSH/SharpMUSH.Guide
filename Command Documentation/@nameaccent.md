# @nameaccent
`@nameaccent <object>[=<accent template>]`

When this attribute holds an accent template that is the same length as `<object>`'s @name, it is used to change the object's name in some situations (how it shows up in speech, look, and a few other commands). This allows for accented names without having to use the accented characters directly in a name, which can make it harder for people to type.

The `<accent template>` is explained in [accents].

If a container has both a @nameaccent and a @nameformat, the @nameformat is used.


## See Also
- [accent()]
- [@nameformat]
- [accname()]
- [stripaccents()]
- [iname()]

