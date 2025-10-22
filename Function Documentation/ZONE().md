# ZONE()
`zone(<object>[, <new zone>])`

  Returns `<object>`'s zone, or #-1 if it has no zone. You must be able to examine the object; if you can't, zone() returns #-1.

  If a `<new zone>` is given, zone() attempts to change the zone of `<object>` to `<new zone>` first - see help @chzone for details.


## See Also
- [@chzone]
- [zfun()]
- [zwho()]
- [zemit() ZONES]

