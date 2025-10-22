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
# @message2
Example:
```
> &sayformat *Mike=%n sez, '%0'
> &sayformat *Walker=From %n: %0
> &cmd.fsay me=$fsay *: @message/spoof *Mike *Walker *Javelin=%n says\, "%0", SAYFORMAT, %0
> fsay This is a test
```

Mike sees:
```
Player sez, 'This is a test'
```
Walker sees:
```
From Player: This is a test
```
Javelin sees:
```
Player says, "This is a test"
```

A rough implementation of @chatformat:
```
> &cmd.chat Globals=$^@chat (.+?)=([\:;]?)(.+?)$: @message/spoof cwho(%1)=setr(0,<%1> [speak(&[squish(ctitle(%1, %#) %n)], %2%3)]), CHATFORMAT, firstof(%2, "), %1, %3, %n, ctitle(%1, %#), %q0
> @set Globals/cmd.chat=regexp
```

See [@message3] for more examples.
# @message3
A (very) basic language system:
```
> &skill`spanish Juan=2
> &skill`spanish Bob=1
> &cmd.spanish Globals=$+spanish *: @nspemit %#=You say (Spanish), "%0"; @message/oemit/spoof %#=setr(0,%n says (Spanish)\, "%0"), %!/TRANSLATE, ##, SPANISH, %q0
> &translate Globals=switch(default(%0/skill`%1, 2), 2, %2, speak(%#, |%2,, %!/translate`some))
> &translate`some Globals="[iter(%0,if(rand(2),%i0,...))]"
> +spanish The rain in Spain falls mainly on the plain
```

You see:
```
You say (Spanish), "The rain in Spain falls mainly on the plain"
```
Bob sees (something like):
```
Mike says (Spanish), "The rain ... ... falls ... ... ... ..."
```
Juan sees:
```
Mike says (Spanish), "The rain in Spain falls mainly on the plain"
```

