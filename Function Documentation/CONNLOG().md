# CONNLOG()
`CONNLOG(all|[not] logged in|<name>, <spec>...[, <osep>])`

  If connection tracking is enabled, this Wizard-only returns a list of connections that match the given `<spec>`. The format of the list elements is '`<dbref>` `<unique-id>`', with elements seperated by `<osep>` (defaulting to |). `<unique-id>` is an identifier that can be used to get more information from the connection with connrecord().

  If the first argument is 'all', all connections are returned. If it's 'logged in', all connections that are logged in to players are returned. 'not logged in' shows connections that never logged in. Otherwise, only connections for the given player are returned. If a connection that never logged in is returned, the dbref is #-1 for that record.

  This function must be enabled (by the use_connlog @config option); if disabled, it returns #-1.

  See [connlog2].

