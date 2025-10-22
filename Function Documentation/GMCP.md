# GMCP
`oob(<players>, <package>[, <message>])`

  This function sends an out-of-band message using the General MUD Communication Protocol (GMCP - http://www.gammon.com.au/gmcp) and a WebSocket.

  `<players>` is a space-separated list of player names/dbrefs to send the message to. Player names which contain spaces should be given in "quotes".

  `<package>` is the name of the package/message type.

  If specified, `<message>` is a JSON-formatted message to be sent. Use the JSON() function to construct valid JSON.

  You must be a wizard or have the Send_OOB power to send messages to anyone but yourself.

  Returns the number of descriptors the message was sent to on success, or a string starting with #-1 on error.


## See Also
- [json()]
- [wsjson()]

