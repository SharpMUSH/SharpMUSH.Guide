# @locale
`@locale`<br>
`@locale <tag>`<br>
`@locale =`

Shows or sets the language the server addresses you in. `<tag>` is a BCP-47 language tag such as `en`, `fr` or `de`; with no argument the command reports your current locale, and with an empty argument it clears the setting back to the server default.

The locale applies to the connection that ran the command and is stored as the `LOCALE` attribute on your character, so it is remembered the next time you connect.

This is a SharpMUSH command; PennMUSH has no @locale.


**See Also:**
- [@set]

