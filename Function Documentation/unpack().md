# unpack()
`unpack(<string>[, <radix>[, <baseconv digits>]])`

  Reads `<string>` as an integer in base `<radix>`, which is 2 to 64 and defaults to 64, and returns it in decimal. It uses pack()'s digits, so upper and lower case are different digits. A leading `-` makes the number negative. A character that is not a digit of `<radix>` returns #-1 NUMBER IS NOT VALID FOR INPUT RADIX; RhostMUSH reads up to that character instead.

  When `<baseconv digits>` is true, it reads baseconv()'s digits instead, as baseconv(<string>,<radix>,10) does.

  Examples:
```sharp
think unpack(FF,16)
255
think unpack(3$)
255
think unpack(ff,16,1)
255
think unpack(ff,16)
#-1 NUMBER IS NOT VALID FOR INPUT RADIX
```


::: seealso
- [PACK()]
- [BASECONV()]
:::

