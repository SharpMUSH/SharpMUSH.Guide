# @ealias
# @lalias
`@ealias <object>[=<enter alias1>[; ... ; <enter aliasN>]]`
`@lalias <object>[=<leave alias1>[; ... ; <leave aliasN>]]`

These attributes contain lists of "enter aliases" and "leave aliases" for `<object>` - any of the aliases can be used in place of "enter `<object>`" and "leave `<object>`" to enter/leave the object.

These attributes only have meaning for players and things (as rooms/exits cannot be "enter"ed) - the aliases for exits are stored in @alias.

Example:
```
> @ealias Chair=Sit down;sit
> @lalias Chair=Stand up;stand
```


## See Also
- [enter]
- [leave]
- [goto]
- [ENTER_OK]

