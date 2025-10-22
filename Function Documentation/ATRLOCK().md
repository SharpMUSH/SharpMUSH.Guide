# ATRLOCK()
`atrlock(<object>/<attrib>[, [on|off]])`

  When given a single `<object>`/`<attribute>` pair as an argument, returns 1 if the attribute is locked, 0 if unlocked, and #-1 if the attribute doesn't exist or can't be read by the function's caller.

  When given a second argument of "on" (or "off"), attempts to lock (or unlock) the specified attribute, as per @atrlock.

  A locked attribute is one which has the "locked" attribute flag, so this function is roughly equivilent to:

`hasattr(<object>/<attrib>, locked)`
`set(<object>/<attribute>, [!]locked)`

  except that the attribute's owner is also changed when you lock it via atrlock().


## See Also
- [@atrlock]
- [@atrchown]
- [hasflag()]

