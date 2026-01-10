# IPADDR()
`ipaddr(<player|descriptor>)`

  Returns the IP address of the connected player or descriptor. This may be more reliable than get(`<player>`/lastip) if the player has multple connections from different locations, and the function is called with a descriptor argument.

  The caller can use the function on himself, but using on any other player requires privileged power such as Wizard, Royalty or SEE_ALL.


## See Also
- [Connection Functions]
- [hostname()]
- [ports()]
- [lports()]

