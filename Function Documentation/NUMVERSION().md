# NUMVERSION()
`version()`
`numversion()`

  version() returns a string which contains various version information for the MUSH you're on. numversion() returns an integer representation of the version/patchlevel which can be used for softcode comparison.

  Example:
```
say version()
You say "PennMUSH version 1.8.1 patchlevel 4 [12/06/2005]"
say numversion()
You say "1008001004"
```

    > say version()
    You say, "PennMUSH version 1.8.5 patchlevel 7 [03/16/2015] (rev ebdea0a)"
    > say numversion()
    You say, "1008005007"


## See Also
- [@version]

