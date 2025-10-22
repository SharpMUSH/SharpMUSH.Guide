# @message
`@message[/<switches>] <recipients>=<defmsg>,[<obj>/]<attr>[,<arg0>[, ... , <arg29>]]]`

@message is designed for the use of *format messages, such as @pageformat or @chatformat. It is intended for use with @hooking page, @chat, or say/pose/emit, or for coding language systems.

For each of the given `<recipients>`, `<obj>/<attr>` is evaluated (with up to 30 arguments, as if it was ufun()'d), and the object is shown the result via @pemit. If the attribute does not exist, or you do not have permission to evaluate it, they are shown `<defmsg>` instead.

If `<obj>` is not given, or is given as "#-2", the attribute will be checked on the recipient.

If one of the arguments matches "##", it will be replaced with the dbref of the recipient.

Switches:
- /noeval -- none of @message's arguments will be evaluated
- /spoof -- the message will appear to be from the enactor, not the executor. Requires the Can_Spoof @power
- /remit -- works like @remit, treating `<recipients>` as a list of rooms to send the message to
- /oemit -- works like @oemit, with `<recipients>` as a list of objects not to emit to. See [@oemit] for more info
- /nospoof -- don't show nospoof info, as per @nspemit/@nsremit/@nsoemit
- /silent -- don't show a confirmation message
- /noisy -- show a confirmation message; default depends on the silent_pemit @config option

See [@message2] for examples.

## See Also
- [message()]
- [@chatformat]
- [@pageformat]
- [@oemit]
- [@remit]
- [speak()]

