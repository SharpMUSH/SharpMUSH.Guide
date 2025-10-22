# ADDRLOG()
`ADDRLOG([count,], ip|hostname, <pattern>[, <osep>)`

  Searches the log of unique sites that have connected to the mush and returns a list of 'IPADDRESS HOSTNAME' pairs that match the given field with the given wildcard pattern, separated by `<osep>`, which defaults to |. If 'count' is given, returns the total number of matches instead.

  Restricted to See_all, Wizard, and Royalty objects.

  This function must be enabled (by the use_connlog @config option); if disabled, it returns #-1.


## See Also
- [connlog()]
- [connrecord()]

