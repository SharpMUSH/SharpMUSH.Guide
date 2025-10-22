# @attribute3
`@attribute/limit <attrib>=<regexp pattern>`
`@attribute/enum [<delim>] <attrib>=<list of choices>`

`@attribute/limit` lets you restrict all _new_ values for an attribute to those that match a regexp pattern. Case insensitive. (Use (?-i) to make your regexp case-sensitive.)

`@attribute/enum` lets you restrict all _new_ values for an attribute to match an item in a list. It will also perform partial matching on the list, much like a grab. Delimiter is optional, and defaults to a space.

Examples:
```
@attribute/enum sex=male female   <-- requires 'male' or 'female' as @sex
@attribute/enum | race=Wookie|Indy 500 <- Your race can be 'wookie' or 'Indy 500'
@attribute/limit score=^\\d+$    <-- @score can only contain digits. (Remember, Penn's parser eats a \)
```


## See Also
- [ATTRIBUTES]
- [attribute flags]
- [@set]
- [@atrchown]
- [@atrlock]
- [@list]

