# @emit
# emit
# \
`@emit[/<switch>] <message>`<br>
`emit[/<switch>] <message>`<br>
`\<message>`

This sends `<message>` to everyone in your location. Nothing is added to the message, not even your name. If you have a SPEECHMOD attribute set, it will be evaluated with `<message>` as %0 or `%<message>`, and | as %1 or `%<type>`, and the result will be shown instead of `<message>` as long as it evaluates to a non-empty string.

The `/noeval` switch prevents the MUSH from evaluating `<message>`. The `/spoof` switch causes nospoof notifications to show the enactor's dbref instead of the executor's dbref, and requires control over the enactor or the Can_spoof power.

The `/room` switch sends `<message>` to your outermost container instead, as @lemit does, and with it `/silent` and `/noisy` work as they do for @lemit. Without `/room` they change nothing. `/here`, from TinyMUX, is the default and changes nothing.

@emit can be abbreviated as `\`, and `emit` is another name for it.


::: seealso
- [@nspemit]
- [EMIT()]
- [@pemit]
- [@remit]
- [@oemit]
- [@lemit]
- [@zemit]
- [@CEMIT]
- [@SPEECHMOD]
- [NOSPOOF]
- [SPOOFING]
:::

