# CONNRECORD()
`CONNRECORD(<id>[, <osep>])`

  This Wizard-only function returns information about a connection if enhanced logging is enabled.

  `<id>` is a value returned by connlog(). connrecord() returns the following fields: DBREF NAME IPADDR HOSTNAME CONNECTION-TIME DISCONNECTION-TIME DISCONNECTION-REASON SSL WEBSOCKET. If the optional `<osep>` argument is given, it is used instead of space to seperate fields.

  If a single connection had multiple logins and logouts, only the last one is used. If a connection was never logged in, the DBREF field is #-1 and the NAME field is -. If the connection is still active, the DISCONNECTION-TIME is -1 and DISCONNECTION-REASON is -.

  Times are in seconds since the epoch, as returned by secs().

  This function must be enabled (by the use_connlog @config option); if disabled, it returns #-1.


## See Also
- [connlog()]

