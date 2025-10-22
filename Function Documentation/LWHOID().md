# LWHOID()
`lwho([<viewer>[, <status>]])`
`lwhoid([<viewer>[, <status>]])`

  lwho() returns a list of the dbref numbers for all currently-connected players. When mortals use this function, the dbref numbers of hidden wizards or royalty do NOT appear on the dbref list.

  If a `<viewer>` is given, and used by a See_All object, lwho() returns the output of lwho() from `<viewer>`'s point of view.

  `<status>` can be used to include "#-1" dbrefs for unconnected ports, and must be one of "all", "online" (the default) or "offline". It is primarily useful when using a `<status>` with lports(), to make the dbrefs and ports match up. Only See_All players can see offline dbrefs.

  lwhoid() returns a list of objid's instead.


## See Also
- [mwho()]
- [nwho()]
- [xwho()]
- [lports()]

