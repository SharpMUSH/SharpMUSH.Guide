# @alias
`@alias <player>[=<name1>[;<name2>[;...;<nameN>]]]`
`@alias <object>[=<string>]`

For players and exits, the ALIAS attribute has special meaning: it contains a list of aliases (separated by semicolons) which can be used instead of its name to refer to the player or exit.

Players can only have a limited number of aliases; the number is controlled by the 'max_aliases' @config option. The same rules which apply to player names also apply to aliases, and you cannot use another player's name as your alias (though you can include your own name in your aliases, and can change your name to one of your aliases).

If the 'page_aliases' @config option is on, the first alias in the list is shown along with the player's name when they page others.

Exit aliases used to be a part of their name, though all newly created exits use @alias instead.

For other types of object, @alias has no special meaning.


## See Also
- [@name]
- [alias()]
- [fullalias()]

