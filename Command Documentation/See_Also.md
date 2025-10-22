# @SUGGEST
`@suggest[/list]`
`@suggest/add <category>=<word>`
`@suggest/delete <category>=<word>`

Given a list of known good words in a category, the mush can suggest ones based on misspelled or otherwise invalid words. This is used for suggesting function names, help entries, etc. @suggest provides a way to add custom categories and vocabulary words.

When given no switches or `/list`, shows all available suggestion categories. If the dict_file config option is set, tries to populate the 'words' category from it.

`/add` and `/delete` are Wizard-only switches that do the respective operation for a word in a given category.

Example:
```
> @suggest/add pets=dog
> @suggest/add pets=cat
> @suggest/add pets=bird
> think suggest(pets, birb)
BIRD
```


## See Also

