# ATTRIB_SET#()
`attrib_set#(<object>/<attrib>[, <value>])`

  Sets or clears an attribute exactly as [attrib_set()] does, and returns `<object>`'s name followed by the `<object>`/`<attribute>` pair it was given, rather than the empty string. Use it when the calling code wants to report what it just set. On failure it returns the same error attrib_set() would.

  This is a SharpMUSH function; PennMUSH has no attrib_set#().

  **It cannot currently be called.** The parser's function-name token does not admit `#`, so
  `attrib_set#(me/foo, bar)` is never recognised as a call and the text is returned unchanged. Use
  [attrib_set()] until that is fixed.


**See Also:**
- [attrib_set()]
- [set()]

