# @describe
# @desc
`@describe <object>[=<description>]`

This command sets the description of the object, which will be seen whenever something looks at the object with the 'look' command. Every object should have a description, even if just a short one describing its purpose. When looking at a thing, player or exit which has no description, you will see the message "You see nothing special.". A room with no desc set shows nothing.

The description can be formatted using the @descformat attribute. This is particularly useful for @parents and ancestors.

When inside a thing or player, you will see its @idescribe instead, if one is set.

@describe can be abbreviated as @desc.


## See Also
- [look]
- [@adescribe]
- [@idescribe]
- [@descformat]

