# LIST()
`list(<option>[, <type>])`

  This is the function-equivilent of the @list command, and lists some useful information about the MUSH. `<option>` can be one of:

  motd        : Returns the current @motd<br>
  wizmotd     : Returns the current @motd/wizard. Wiz/Roy only.<br>
  downmotd    : Returns the current @motd/down. Wiz/Roy only.<br>
  fullmotd    : Returns the current @motd/full. Wiz/Roy only.<br>
  functions   : Returns a list of all built-in functions and @functions.<br>
  commands    : Returns a list of all built-in commands and @commands.<br>
  attribs     : Returns all standard attributes.<br>
  locks       : Returns the built-in lock types. Similar to llocks().<br>
  flags       : Returns all flags. Similar to lflags().<br>
  powers      : Returns all @powers.

  "commands"/"functions" return both built-in and local commands/functions by default. You can specify a `<type>` of either "builtin", "local" or "all" to limit this if you wish.


**See Also:**
- [@list]
- [flags()]
- [lflags()]
- [config()]
- [functions()]
- [@listmotd]
- [@motd]
`llocks()`

