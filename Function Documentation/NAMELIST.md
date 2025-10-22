# NAMELIST()
`namelist(<player-list>[, [<object>/]<attribute>])`

  namelist() takes a list of players of the form used by the page command and returns a corresponding list of dbrefs. Invalid and ambiguous names return the dbrefs #-1 and #-2, respectively.

  If an `<object>`/`<attribute>` is given, the specified attribute will be called once for each invalid name, with the name as %0 and the dbref returned (#-1 for an unmatched name, #-2 for an ambiguous one) as %1.

  Example:
```
&test me=pemit(%#,Bad name "%0")
say namelist(#1 Javelin "ringo spar" bogus, test)
Bad name "bogus"
You say, "#1 #7 #56 #-1"
```


## See Also
- [namegrab()]
- [name()]
- [locate()]
- [num()]
- [pmatch()]

