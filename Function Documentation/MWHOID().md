# MWHOID()
`mwho()`
`mwhoid()`

  mwho() returns a list of the dbref numbers for all current-connected, non-hidden players. It's exactly the same as lwho() used by a mortal, and is suitable for use on privileged global objects who need an unprivileged who-list. In some cases, lwho(`<viewer>`) may be preferable to mwho(), as it includes hidden players for `<viewer>`s who can see them.

  mwhoid() returns a list of objids instead.


## See Also
- [lwho()]
- [nwho()]

