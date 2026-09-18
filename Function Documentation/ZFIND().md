# ZFIND()
`zfind(<zone>[, <osep>])`

  Returns the dbrefs of every object @chzone'd to `<zone>` that you may examine, separated by `<osep>` (a space by default).

  You must be See_All or pass `<zone>`'s @lock/zone. Objects you could not examine are left out rather than erroring, so the result is what you may see and not necessarily the whole zone.

  This is a SharpMUSH function; PennMUSH offers the zone lists through [search()] and [zwho()].


**See Also:**
- [zwho()]
- [zone()]
- [@chzone]
- [lsearch()]

