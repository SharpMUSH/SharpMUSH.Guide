# @remit
`@remit[/switches] <object>=<message>`

Sends the message to all contents of `<object>`, which can be a room, thing, or player. The message is also sent to the `<object>` itself. (The TinyMUSH equivalent is `@pemit/contents`).

The `/silent` switch stops the remitter from getting feedback if they're in a different location than the target.
The `/noisy` switch always gives feedback to the remitter if they are not in the target location.
(Without `/silent` or `/noisy`, the silent_pemit config option is used to determine noisiness.)
The `/list` switch will send the message to the contents of multiple objects at the same time. The `<object>` argument is treated as a space-separated list of targets.
The `/spoof` switch causes nospoof notifications to show the enactor's dbref instead of the executor's dbref, and requires control over the enactor or the Can_spoof power.
The `/noeval` switch causes `<message>` to not be evaluated.


## See Also
- [@emit]
- [@pemit]
- [@oemit]
- [SPOOFING]
- [NOSPOOF]
- [CONTROL].]

