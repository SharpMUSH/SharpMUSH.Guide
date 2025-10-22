# @emit
# \
`@emit[/<switch>] <message>`
`\<message>`

This sends `<message>` to everyone in your location. Nothing is added to the message, not even your name. If you have a SPEECHMOD attribute set, it will be evaluated with `<message>` as %0, and | as %1, and the result will be shown instead of `<message>` as long as it evaluates to a non-empty string.

The `/noeval` switch prevents the MUSH from evaluating `<message>`. The `/spoof` switch causes nospoof notifications to show the enactor's dbref instead of the executor's dbref, and requires control over the enactor or the Can_spoof power.

@emit can be abbreviated as `\`


## See Also
- [@nsemit]
- [emit()]
- [@pemit]
- [@remit]
- [@oemit]
- [@lemit]
- [@zemit]
- [@cemit]
- [@speechmod]
- [NOSPOOF]
- [SPOOFING].]

