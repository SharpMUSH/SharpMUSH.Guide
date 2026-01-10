# ESCAPE()
`escape(<string>)`

  The escape() function "escapes out" potentially "dangerous" characters, preventing function evaluation in the next pass of the parser. It returns `<string>` after adding the escape character ('\') at the beginning of the string, and before the following characters:

  %  ;  [  ]  {  }  \ ( ) , ^ $

  This function prevents code injection in strings entered by players. It is only needed when `<string>` will be passed through a command or function which will evaluate it again, which can usually be avoided. Since the function preserves the original string, it is, in most cases, a better choice than secure(), but decompose() is often better still.


## See Also
- [decompose()]
- [secure()]
- []

