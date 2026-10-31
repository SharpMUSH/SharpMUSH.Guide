# lcmds()
`lcmds(<object>[/<pattern>][, <osep>[, <type>]])`

  Returns the patterns of the $-commands on `<object>`, in lower case. With `<type>` `^`, it returns the patterns of the ^-listens instead; `$` is the default. `<osep>` separates the patterns and defaults to a space. `<pattern>` limits which attributes are looked at, as in lattr(), and only attributes you can read count.

  Examples:
```sharp
&CMD.HELLO me=$Hello *:think Hello, %0!
&LISTEN.WAVE me=^* waves:think Someone waved.
think lcmds(me)
hello *
think lcmds(me, |, ^)
* waves
```

::: seealso
- [LATTRCMDS()]
- [LATTR()]
- [user-defined commands]
:::

