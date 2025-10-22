# PMATCH()
`pmatch(<name>)`

  pmatch() attempts to find a player called `<name>`, which should be the full or partial name of a player (possibly prefixed with a "*") or a dbref. First, it checks to see if `<name>` is the dbref, full name, or alias of a player; if so, their dbref is returned. Otherwise, it checks for partial matches against the names of online players. If there are no matches, #-1 is returned. If there are multiple matches, pmatch() returns #-2. Otherwise, the matching player's dbref is returned.

  pmatch() does not check for the string "me". If you wish to do that, you should use locate (for example, locate(`<player>`, `<name>`, PFym)).


## See Also
- [num()]
- [namelist()]
- [locate()]

