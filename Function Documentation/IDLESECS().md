# IDLE()
# IDLESECS()
`idle(<player|descriptor>)`

  This function returns the number of seconds a player has been idle, much as WHO does. `<player name>` must be the full name of a player, or a player's dbref. You can also specify a `<descriptor>`, useful if a player is connected multiple times, or for connections which are still at the login screen. Players who are not connected have an idle time of "-1", as do dark wizards, when idle() is used on them by a non-priv'ed player.

  idlesecs() is an alias for idle().


## See Also
- [Connection Functions]
- [conn()]

