# SESSION
`SESSION [<pattern>]`

The SESSION command is the same as the admin WHO, but instead of showing the host, it shows how many bytes each connection has moved: `Sent` is what the client sent to the game, `Recv` what the game sent to it, and `Pend` what has been written but not yet taken by the network. A connection whose counts the connection server did not report shows `-`. *<pattern>* limits the output, only showing players whose name begins with *<pattern>*, or whose names or aliases match *<pattern>* if it's a wildcard pattern.

Anyone who is not a wizard or royalty and lacks the See_All power gets the listing a mortal sees from [WHO] instead.


::: seealso
- [who]
:::

