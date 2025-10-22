# @search
`@search [<player>] [<classN>=<restrictionN>[,...]][,<begin>,<end>]`

This command searches the database and lists objects which meet user specified search criteria. You can limit the scope of the search by specifying `<begin>` and `<end>` as the first and last dbrefs to search.

If a `<player>` argument is supplied, only objects owned by that player will be listed, or all objects if "all" is used. Mortals attempting to match other players (aside from ZMPs whose @lock/zone they pass) or "all" will only get objects which they can examine.

`<class>` and `<restriction>` arguments can be given to filter the match results. Possible `<class>`es include TYPE, NAME, ZONE, PARENT, EXITS, THINGS (or OBJECTS), ROOMS, PLAYERS, FLAGS, LFLAGS, POWERS, ELOCK, COMMAND, LISTEN, EVAL, EPLAYER, EROOM, EEXIT, and ETHING (or EOBJECT).

If `<class>`=TYPE, possible `<restriction>`s include THING (or OBJECT), ROOM, EXIT, PLAYER, GARBAGE. This shows all objects of the specified type.

If `<class>`=NAME, only objects whose name begin with the string `<restriction>` will be listed. If `<class>`=EXITS, OBJECTS, ROOMS or PLAYERS, only objects of that type whose name begins with `<restriction>` are listed.

If `<class>`=ZONE, only objects in the zone `<restriction>` will be listed.
If `<class>`=PARENT, only children of parent `<restriction>` will be listed.
For ZONE and PARENT, `<restriction>` must be specified as a dbref number.

See [@search2].

