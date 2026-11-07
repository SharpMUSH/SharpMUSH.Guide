# pack()
`pack(<number>[, <radix>[, <baseconv digits>]])`

  Writes the integer `<number>` in base `<radix>`, which is 2 to 64 and defaults to 64. unpack() reads it back. The digits are:

  "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@$"

  Every one of them can appear in an attribute name, so a radix-64 number makes a short attribute name. A negative number is written with a leading `-`. With `<baseconv digits>`, radix 63 and 64 have no digit to spare for it, so a negative number is an error there.

  When `<baseconv digits>` is true, the digits are baseconv()'s instead: lower case up to radix 36, and its base64 url string above that. pack(<number>,<radix>,1) is baseconv(<number>,10,<radix>).

  pack() and unpack() come from TinyMUX and RhostMUSH.

  Examples:
```sharp
think pack(255,16)
FF
think pack(255)
3$
think pack(255,16,1)
ff
think pack(-10,2)
-1010
think pack(-629126998)
-bVxTM
```


::: seealso
- [UNPACK()]
- [BASECONV()]
:::


