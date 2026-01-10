# IDLE
`IDLE [<string>]`

This command does nothing. It does not reset a connection's idle time. It is useful for people who are connecting from behind a NAT gateway with a short fixed timeout; if you're in this situation, have your client send the IDLE command every minute or so, and the NAT connection won't time out (but you won't appear, to other players, to be active).

Some routers will only consider a connection alive if text is received, as well as sent. If you give a `<string>` with the IDLE command, that same `<string>` will be sent back to you for this purpose.


## See Also
- [KEEPALIVE]
- [@idle]

