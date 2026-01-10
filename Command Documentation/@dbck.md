# @dbck
`@dbck`

This is a wizard only command. It forces the database to perform a series of internal cleanup and consistency checks that normally run approximately every 10 minutes:

1. For every object, make sure its location, home, next, contents, parent, and zone fields are valid objects.
2. Check for disconnected rooms that aren't set FLOATING
3. For every exit, player, or thing, make sure there is exactly one way to reach it from a room by following the contents fields of non-exits, the next fields of non-rooms, and the exits fields of rooms.
4. For every thing or player, make sure that it is in the contents list of its location. Make sure every exit is in the exits list of its location.
5. Check that objects being used as zones have a @lock/zone.

@dbck no longer performs an @purge. The results of @dbck are written to the game's error log, and not reported to the Wizard.

