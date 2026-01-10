# ENTRANCES()
`entrances([<object>[, <type>[, <begin>[, <end>]]]])`

  With no arguments, the entrances() function returns a list of all exits, things, players, and rooms linked to your location, like @entrances. You can specify an object other than your current location with `<object>`. You can limit the type of objects found by specifying one or more of the following for `<type>`:
        a        all (default)
        e        exits
        t        things
        p        players
        r        rooms

  You can also limit the range of the dbrefs searched by giving `<begin>` and `<end>`. If you control `<object>`, or have the Search or See_All powers, all objects linked to `<object>` are returned. Otherwise, only objects you can examine will be included.


## See Also
- [lsearch()]
- [@entrances]

