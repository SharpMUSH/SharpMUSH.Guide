# REGMATCH()
# REGMATCHI()
  (Help text from TinyMUSH 2.2.4, with permission)
`regmatch(<string>, <regexp>[, <register list>])`
`regmatchi(<string>, <regexp>[, <register list>])`

  regmatch() checks to see if the entirety of `<string>` matches the regular expression `<regexp>`, and returns 1 if so and 0 if not. regmatchi() does the same thing, but case-insensitively. They are the regexp-equivilent of strmatch(); if you're looking for a regexp version of match(), see [reglmatch()].

  If `<register list>` is specified, there is a side-effect: any parenthesized substrings within the regular expression will be set into the specified local registers. The syntax for this is X:Y, where X is the number (0 is the entire matched text) or name of the substring, and Y is the q-register to save it in. If X: isn't given, the nth substring based on the register's position in the list minus one is used. The first element will have the complete matched text, the second the first substring, and so on. This is to maintain compatibility with old code; it's recommended for new uses that the X:Y syntax be used.

  If `<regexp>` is not a valid regular expression, an error in the form "#-1 REGEXP ERROR: `<description>`" will be returned.

  See [regmatch2] for an example.


## See Also
- [regrab()]
- [regedit()]
- [valid()]
- [reswitch()]
- [strmatch()]
- [regexp syntax]

