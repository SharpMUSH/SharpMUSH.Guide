# DECOMPOSEWEB()
`decomposeweb(<string>)`

  Works like [decompose()], but reconstructs the string for a web client: angle brackets in the text are encoded so that the result can be placed in HTML without being read as markup, while any colour on the string is rebuilt as an [ansi()] call.

  This is a SharpMUSH function; PennMUSH has no decomposeweb().


**See Also:**
- [decompose()]
- [ansi()]
- [render()]

