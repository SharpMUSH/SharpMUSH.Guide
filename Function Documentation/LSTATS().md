# LSTATS()
# STATS()
`lstats([<player>])`

  This function returns the breakdown of objects in the database, in a format similar to "@stats". If `<player>` is "all" (the default), a breakdown is done for the entire database. Otherwise, the breakdown is returned for that particular player.

  Only wizards and those with the Search power can LSTATS() other players. The list returned is in the format:
  `<Total objects>` `<Rooms>` `<Exits>` `<Things>` `<Players>` `<Garbage>`

  stats() is an alias for lstats().

## See Also
- [nsearch()]

