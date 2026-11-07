# @locale
`@locale`<br>
`@locale <tag>`<br>
`@locale =`

Shows or sets the language the server addresses you in. `<tag>` is a BCP-47 language tag such as `en`, `fr` or `de`; with no argument the command reports your current locale, and with an empty argument it clears the setting back to the server default.

The locale applies to every connection you have open and is stored as the `LOCALE` attribute on your character, so it is remembered the next time you connect.

The web portal shares the setting. Choosing a language in the portal's language menu runs `@locale` for the character you are playing, and a portal tab playing a character whose locale the portal is translated into switches to that language.

This is a SharpMUSH command; PennMUSH has no @locale.


::: seealso
- [@set]
:::

