# MOTD()
# WIZMOTD()
# DOWNMOTD()
# FULLMOTD()
`motd()`<br>
`wizmotd()`<br>
`downmotd()`<br>
`fullmotd()`

  These functions return the Message of the Day that [@motd] set, one function per `<type>`: motd() the connect MotD, wizmotd() the wizard one, downmotd() the one shown when logins are disabled, and fullmotd() the one shown when every connection is in use. A MotD that has not been set returns the empty string.

  motd() is readable by anyone, since every player sees the connect MotD on the way in. The other three are Wizard-only and return `#-1 PERMISSION DENIED` to anyone else, matching who [@motd/list] shows them to.

  These are SharpMUSH functions; PennMUSH exposes the same text only through [@motd].


**See Also:**
- [@motd]
- [poll()]
- [@poll]

