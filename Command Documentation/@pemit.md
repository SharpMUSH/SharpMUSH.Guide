# @pemit
`@pemit[/<switches>] <object>=<message>`
`@pemit/list[/<switches>] <object list>=<message>`
`@pemit/port[/list][/silent] <descriptor(s)>=<message>`

The basic form of this command sends `<message>` to `<object>` directly. It is very similar in its effects to @emit except only one object will see the message.

`@pemit/list` sends the message to multiple objects. You will not get a confirmation message when using this switch.

`@pemit/port` can only be used by Wizards/Royalty, and sends `<message>` to one or more connections. It can be used to send messages to connections which are still at the login screen, or to send a message to just one of a player's connections when he's logged in multiple times.

See [@pemit2] for more.

