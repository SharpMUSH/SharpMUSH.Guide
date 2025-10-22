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

