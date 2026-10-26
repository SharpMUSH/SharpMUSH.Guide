# connrecord()
`CONNRECORD(<id>[, <osep>])`

  This Wizard-only function returns information about a connection if enhanced logging is enabled.

  `<id>` is a value returned by connlog(). connrecord() returns the following fields: DBREF NAME IPADDR HOSTNAME CONNECTION-TIME DISCONNECTION-TIME DISCONNECTION-REASON SSL WEBSOCKET. If the optional `<osep>` argument is given, it is used instead of space to seperate fields.

  If a single connection had multiple logins and logouts, only the last one is used. The NAME field is always "Unknown". If a connection was never logged in, the DBREF field is #-1. If the connection is still active, the DISCONNECTION-TIME is 0 and DISCONNECTION-REASON is empty.

  Times are in seconds since the epoch, as returned by secs().

  This function must be enabled (by the use_connlog @config option); if disabled, it returns #-1.


::: seealso
- [connlog()]
:::

