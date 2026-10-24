# @suggest
`@suggest[/list]`<br>
`@suggest/add <category>=<word>`<br>
`@suggest/delete <category>=<word>`

Given a list of known good words in a category, the mush can suggest ones based on misspelled or otherwise invalid words. This is used for suggesting function names, help entries, etc. @suggest provides a way to add custom categories and vocabulary words.

When given no switches or `/list`, shows all available suggestion categories. If the dict_file config option is set, the 'words' category is filled from that file at startup, and refilled whenever the file has changed since.

`/add` and `/delete` add or remove a word in a given category. They need the `config.admin` permission.

### Example
```sharp
> @suggest/add pets=dog
> @suggest/add pets=cat
> @suggest/add pets=bird
> think suggest(pets, birb)
BIRD
```


::: seealso
- [SUGGEST()]
:::



