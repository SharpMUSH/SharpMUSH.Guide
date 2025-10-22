# DOING
`WHO [<pattern>]`
`DOING [<pattern>]`

For mortals, the WHO command displays a list of players currently connected to the MUSH, the amount of time they've been connected, their idle time, and their @doing. Hidden players are not shown.

For admin, WHO shows the names of online players, their location, connection/idle times, the number of commands typed through the connection, the descriptor/port number, and the host the player is connected from. It also includes hidden players, and connections which are at the login screen, but have not yet connected to a player.

Admin can use the DOING command to see the same output mortals see with WHO, with the exception that dark/hidden players are included.

If a `<pattern>` is given for either command, only connected players whose names start with `<pattern>` are shown. If `<pattern>` is a wildcard, only players whose names or aliases match the pattern are shown.

See [who2].

