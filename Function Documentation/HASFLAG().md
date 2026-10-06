# HASFLAG()
`hasflag(<object>[/<attrib>], <flag>)`

  With no `<attrib>`, hasflag() returns 1 if `<object>` has the `<flag>` flag set. If `<attrib>` is specified, the attribute is checked for the `<flag>` attribute flag instead. If the flag is not present, 0 is returned.

  hasflag() will accept a full flag name ("Wizard") or a flag letter ("W"). You can check the flags of any object, whether you control them or not.

  Example:
```sharp
think hasflag(me, wizard)
1
```


::: seealso
- [ORFLAGS()]
- [ANDFLAGS()]
- [ORFLAGS()]
- [ANDFLAGS()]
- [FLAGS()]
- [LFLAGS()]
- [attribute flags]
- [@flag]
- [HASPOWER()]
- [HASTYPE()]
:::

