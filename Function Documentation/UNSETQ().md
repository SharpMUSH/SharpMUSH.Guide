# LISTQ()
# UNSETQ()
`listq([<pattern>])`
`unsetq([<pattern1> [<pattern2> [...]]])`

  listq() returns a space-separated list of set q-registers with values available in the current q-register scope. If `<pattern>` is provided, then only those that match the wildcard pattern `<pattern>` will be returned.

  unsetq() without arguments clears all registers. Otherwise, unsetq() treats its argument as a list of register name patterns, and will unset all those registers within the local scope.

  If unsetq() is inside of a letq(), and does not have an argument, it will clear the registers that letq() has protected. unsetq() with arguments clears the specified registers.

  unsetq(`<arg>`) will clear all registers returned by listq(`<arg>`).

  Example:
```
think setq(name,Walker,num,#6061,loc,Bahamas)[listq()]
LOC NAME NUM
think setq(name,Walker,num,#6061,loc,Bahamas)[listq(n*)]
NAME NUM
think setq(name,Walker,num,#6061,loc,Bahamas)[unsetq(name)][listq()]
LOC NUM
think setq(name,Walker,num,#6061,loc,Bahamas)[unsetq(n*)][listq()]
LOC
```


## See Also
- [setq()]
- [letq()]
- [r()]
- [localize()]
- [registers()]
- [WILDCARDS]

