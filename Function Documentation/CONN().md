# CONN()
`conn(<player|descriptor>)`

  This function returns the number of seconds a player has been connected. `<player>` should be the full name of a player or a dbref. You can also use a `<descriptor>` to get connection information for a specific connection when a player is connected more than once. Wizards can also specify the descriptor of a connection which is still at the login screen.

  This function returns -1 for invalid `<player|descriptor>`s, offline players and players who are dark, if the caller is not able to see them.


## See Also
- [CONNECTION FUNCTIONS]

