# @search4
For the class TYPE=PLAYER, and for PLAYER=`<player-name>`, anyone may obtain information on any player. In all other cases, wizards may obtain information about other players, and players who pass a ZMP's zone-lock may obtain information about the ZMP.

If multiple `<class>` and `<restrictions>` are given, objects must meet all criteria in order to match successfully. The exception to this is that if multiple 'type' searches (PLAYER, EROOM, etc) are used, only the last type given is used in the search.

@search is only mildly computationally expensive for most of the search classes. Computationally expensive searches are the evaluating searches (EVAL, EPLAYER, ETHING, EROOM, EEXIT), the attribute pattern searches (COMMAND, LISTEN), and ELOCK searches which perform evaluation searches (attr/value) or indirect locks (@obj/lock). These searches all cost a number of pennies (the exact amount is configurable; see @config find_cost).

See [@search5] for some examples.

## See Also
- [lsearch()]
- [@find]

