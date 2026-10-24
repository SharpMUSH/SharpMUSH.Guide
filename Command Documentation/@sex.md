# @sex
`@sex <player>[=<gender>]`

You can use this command to set yourself or any of your objects to be male, female, neuter, or plural. The SEX attribute is used for pronoun substitution by the MUSH, and anything not recognizable will be treated as neuter.

### Examples
```sharp
> @sex me=Male
> @sex me=Female
> @sex me=Woman
> @sex me=They
> @sex me=Plural
> @sex me=No thank you (silly, but possible)
```

`@sex` always sets the SEX attribute, as it does in PennMUSH. If the game keeps gender in another attribute (the `gender_attr` option), use [@gender] instead.


::: seealso
- [@gender]
- [@config attribs]
- [GENDER]
- [SUBJ()]
- [POSS()]
- [APOSS()]
- [OBJ()]
:::

