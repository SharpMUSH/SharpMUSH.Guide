# zfun()
`zfun(<attribute>[, <arg0>[, <arg1>[, ... , <arg29>]]])`<br>
`zfun(<zone>/<attribute>[, <arg0>[, <arg1>[, ... , <arg29>]]])`

  This function evaluates an attribute on the caller's Zone object. It is essentially identical to

`ufun(zone(me)/<attribute>[, <arg0>[, ... , <arg29>]])`

  An object in several zones can name the one: `<zone>/<attribute>` is that zone's attribute, and a zone the caller is not in gives `#-1 INVALID ZONE`. See [ZFUN2()] for the rest of the family.


::: seealso
- [u()]
- [GET()]
- [ZONE()]
- [ZEMIT()]
- [ZWHO()]
- [ZFUN2()]
- [zones]
:::

