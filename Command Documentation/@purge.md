# @purge
@purge is a wizard only command that calls the internal purge routine to advance the clock of each object scheduled to be destroyed, and destroy those things whose time is up. The internal purge routine is normally run automatically approximately every 10 minutes.

The @purge command should almost never need to be performed manually. If you do use it manually, you may want to use it twice in a row to make sure that everything marked GOING is actually destroyed.


## See Also
- [@dbck]

