# CHR()
# ORD()
`chr(<number>)`<br>
`ord(<character>)`

  ord() returns the numerical value of the given character. chr() returns the character with the given numerical value.

  chr() refuses control characters (0-31 and 127-159) with #-1 UNPRINTABLE CHARACTER. Unlike PennMUSH, it accepts any Unicode code point, not just 0-255.

  Examples:
```sharp
say ord(A)
You say, "65"
say chr(65)
You say, "A"
```

