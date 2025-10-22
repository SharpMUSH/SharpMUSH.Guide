# XMWHOID()
`xwho([<looker>, ]<start>, <count>)`
`xmwho(<start>, <count>)`
`xwhoid([<looker>, ]<start>, <count>)`
`xmwhoid(<start>, <count>)`

  xwho() fetches `<count>` or fewer player dbrefs from the list of connected players, starting at position `<start>`. It is useful when the number of players connected causes lwho() or pemits in +who $-commands to exceed buffer limits. If a `<looker>` is given, only includes players who `<looker>` can see are online. It is equivalent to:

`extract(lwho([<looker>]), <start>, <count>)`

  xmwho() does not include hidden players (like mwho()).

  xwhoid() and xmwhoid() return objids instead of dbrefs.


## See Also
- [lwho()]
- [mwho()]
- [nwho()]
- [zwho()]

