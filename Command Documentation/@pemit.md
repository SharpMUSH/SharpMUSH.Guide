# @pemit
`@pemit[/<switches>] <object>=<message>`
`@pemit/list[/<switches>] <object list>=<message>`
`@pemit/port[/list][/silent] <descriptor(s)>=<message>`

The basic form of this command sends `<message>` to `<object>` directly. It is very similar in its effects to @emit except only one object will see the message.

`@pemit/list` sends the message to multiple objects. You will not get a confirmation message when using this switch.

`@pemit/port` can only be used by Wizards/Royalty, and sends `<message>` to one or more connections. It can be used to send messages to connections which are still at the login screen, or to send a message to just one of a player's connections when he's logged in multiple times.

See [@pemit2] for more.
# @pemit2
The @pemit command can take the following additional switches:
- /contents -- equivalent to @remit.
- /silent -- does not tell the @pemit'ing object a confirmation message.
- /noisy -- tells the @pemit'ing object a confirmation message.
- /noeval -- `<message>` will not be evaluated for substitutions
- /spoof -- the enactor's dbref will be used for nospoof notifications instead of the executor's dbref. Requires control over enactor or Can_spoof power.

You cannot @pemit to objects set HAVEN, or objects whose @lock/page you do not pass, unless you are set WIZARD or have the pemit_all @power.


## See Also
- [@emit]
- [@nspemit]
- [@oemit]
- [@remit]
- [NOSPOOF]
- [SPOOFING]
- [page]

