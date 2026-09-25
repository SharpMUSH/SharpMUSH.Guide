# LSTATS()
# STATS()
`lstats([<player>])`

  This function returns the breakdown of objects in the database, in a format similar to "@stats". If `<player>` is "all" (the default), a breakdown is done for the entire database. Otherwise, the breakdown is returned for that particular player.

  Only wizards and those with the Search power can LSTATS() other players. For the whole database the list returned is in the format:<br>
  `<Total objects>` `<Rooms>` `<Exits>` `<Things>` `<Players>` `<Garbage>`<br>
  For a single player the garbage column is omitted:<br>
  `<Total objects>` `<Rooms>` `<Exits>` `<Things>` `<Players>`

  PennMUSH's own help lists six columns for both forms, but fun_lstats prints the garbage column
  only for the whole database; SharpMUSH follows the code. A destroyed object is removed here
  rather than kept as garbage, so that column is always 0.

  stats() is an alias for lstats().

**See Also:**
- [nsearch()]

