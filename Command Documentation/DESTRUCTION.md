# DESTRUCTION
When an object is marked for destruction, the GOING flag is set on it and its @adestroy attribute is triggered (if the 'adestroy' @config option is true). If `<object>` is a room, all the exits in the room are marked for destruction as well. If `<object>` is a player, and the @config option destroy_possessions is on, everything he owns is marked for destruction as well. (If really_safe is also on, his SAFE objects are spared.)

The MUSH checks for GOING objects every ten minutes or so (see '@config purge_interval'); each one is set with the GOING_TWICE flag, and will be destroyed totally on the next cycle. You can save it from destruction during this period using the @undestroy command, or @destroy it again to destroy it instantly. The GOING and GOING_TWICE flags cannot be set or removed manually.

When an object is destroyed, any commands, @waits and semaphores it has queued are drained, and the object's owner has the quota for the object, and the initial cost of creating it, refunded. The OBJECT`DESTROY event is also queued.

Players can only be @destroyed when they are not connected, and even then can only be destroyed by a Wizard player. If the destroy_possessions @config option is on, anything the player owns is @destroyed. If the really_safe option is also on, his SAFE possessions are spared. Any objects he owns which aren't destroyed are @chown'd to the Probate player (as per '@config probate_judge'), as are any @channels the player owned.


## See Also
- [SAFE]
- [EVENTS]

