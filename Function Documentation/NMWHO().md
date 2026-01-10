# NMWHO()
# NWHO()
`nwho([<viewer>])`
`nmwho()`

  nwho() returns a count of all currently-connected players. When mortals use this function, hidden players are NOT counted. See_All players can specify a `<viewer>` to get a count of the number of players that `<viewer>` can see is online.

  nmwho() returns a count of all currently connected, non-hidden players. It's exactly the same as nwho() used by a mortal, and is suitable for use on privileged global objects that always need an unprivileged count of who is online.

  These functions are equivilent to words(lwho([`<viewer>`])) and words(mwho()), but are more efficient, and don't suffer from buffer constraints.


## See Also
- [lwho()]
- [mwho()]
- [xwho()]
- [xmwho()]

