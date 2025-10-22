# HOSTNAME()
`host(<player|descriptor>)`

  Returns the hostname a player is connected from, as shown on the wizard WHO. This may be more reliable that get(`<player>`/lastsite) if the player has multple connections from different locations, and the function is called with a descriptor argument.

  The caller can use the function on himself, but using on any other player requires privileged power such as Wizard, Royalty or SEE_ALL.

  hostname() is an alias for host().


## See Also
- [Connection Functions]
- [ipaddr()]
- [ports()]
- [lports()]

