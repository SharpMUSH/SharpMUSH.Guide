# @gender
`@gender <object>[=<gender>]`

Sets the gender of `<object>` in the attribute the `gender_attr` option names, which is the attribute pronoun substitution reads. That is SEX unless the game has changed it, so on most games `@gender` and `@sex` do the same thing. With no `=`, the attribute is cleared.

`@gender` works exactly like `@sex` and the other `@<attribute>` commands: you must be able to set the attribute on `<object>`, the value is stored as typed, and you are told it was set unless you are QUIET. If `gender_attr` is changed, `@gender` sets the new attribute from then on. `@sex` always sets SEX. `@gender` is a SharpMUSH addition.

```sharp
> @gender me=Female
```
Output: "Yourname/SEX - Set." on a game that keeps gender in SEX, or the name of the attribute `gender_attr` names in its place.

```sharp
> @gender me
```
Output: "Yourname/SEX - Cleared." on a game that keeps gender in SEX.


::: seealso
- [@sex]
- [@config attribs]
- [GENDER]
- [SUBJ()]
:::

