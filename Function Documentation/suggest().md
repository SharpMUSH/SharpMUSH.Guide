# suggest()
`SUGGEST(<category>, <word>[, <seperator>[, <limit>]])`

  Returns a list of suggested alternatives to `<word>` from vocabulary words known in the given `<category>`. `<seperator>` defaults to space. `<limit>` controls how many suggestions are returned, and defaults to 20.

 This is the same mechanism used to suggest help entries, function names, etc. when an unknown one is encountered.

 Categories and their words are added with @suggest. If the dict_file @config option is set, the server loads that file into the 'words' category at startup, one word per line.

 Example:
```sharp
think suggest(words, ardvark)
AARDVARK AARDVARKS AARDVARK'S etc...
```


::: seealso
- [@SUGGEST]
:::

