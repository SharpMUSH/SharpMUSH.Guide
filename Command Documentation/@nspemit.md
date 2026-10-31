# @nspemit
# @nsemit
# @nslemit
# @nsremit
# @nszemit
# @nsoemit
# @nsprompt
`@nsemit[/room][/silent|/noisy][/noeval][/spoof] [<message>]`<br>
`@nslemit[/silent|/noisy][/noeval][/spoof] <message>`<br>
`@nspemit[/list][/port][/silent|/noisy][/noeval] <object>=<message>`<br>
`@nsprompt[/silent|/noisy][/noeval][/spoof] <object>=<message>`<br>
`@nsremit[/list][/silent|/noisy][/noeval][/spoof] <object>=<message>`<br>
`@nsoemit[/noeval][/spoof] [<room>/]<object> [<object>...]=<message>`<br>
`@nszemit[/silent|/noisy] <zone>=<message>`

These commands work like @emit, @lemit, @pemit, @prompt, @remit, @oemit, and @zemit, respectively, but will not include nospoof information if used by Wizards or someone with the Can_spoof @power. They are meant to be used by commands in the master room where the nospoof information is just useless noise. Each switch works as it does on the respective command; @nspemit has no `/contents` or `/spoof`. SharpMUSH also supports the privileged `/port` and `/port/list` forms on @nspemit.


::: seealso
- [@emit]
- [@lemit]
- [@pemit]
- [@prompt]
- [@remit]
- [@oemit]
- [@zemit]
- [EMIT()]
- [NSLEMIT()]
- [PEMIT()]
- [REMIT()]
- [OEMIT()]
- [ZEMIT()]
- [PROMPT_NEWLINES]
:::

