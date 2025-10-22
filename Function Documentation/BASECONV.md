# BASECONV()
`baseconv(<number>, <from base>, <to base>)`

  Converts `<number>`, which is in base `<from base>` into base `<to base>`. The bases can be between 2 (binary) and 64, inclusive.

  Numbers 36 and under use the standard numbers:

  "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  All bases over 36 use base64 url string:

  "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

  In base 63 and base 64, - is always treated as a digit. Using base64 as a 'from' will also treat + as 62 and / as 63.

