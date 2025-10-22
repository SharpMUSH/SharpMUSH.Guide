# LIST()
`list(<option>[, <type>])`

  This is the function-equivilent of the @list command, and lists some useful information about the MUSH. `<option>` can be one of:

  motd        : Returns the current @motd
  wizmotd     : Returns the current @motd/wizard. Wiz/Roy only.
  downmotd    : Returns the current @motd/down. Wiz/Roy only.
  fullmotd    : Returns the current @motd/full. Wiz/Roy only.
  functions   : Returns a list of all built-in functions and @functions.
  commands    : Returns a list of all built-in commands and @commands.
  attribs     : Returns all standard attributes.
  locks       : Returns the built-in lock types. Similar to llocks().
  flags       : Returns all flags. Similar to lflags().
  powers      : Returns all @powers.

  "commands"/"functions" return both built-in and local commands/functions by default. You can specify a `<type>` of either "builtin", "local" or "all" to limit this if you wish.


## See Also
- [@list]
- [flags()]
- [lflags()]
- [config()]
- [functions()]
- [@listmotd]
- [@motd]
`llocks()`

