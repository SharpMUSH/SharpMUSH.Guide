# SUGGEST()
`SUGGEST(<category>, <word>[, <seperator>[, <limit>]])`

  Returns a list of suggested alternatives to `<word>` from vocabulary words known in the given `<category>`. `<seperator>` defaults to space. `<limit>` controls how many suggestions are returned, and defaults to 20.

 This is the same mechanism used to suggest help entries, function names, etc. when an unknown one is encountered.

 If the dict_file @config option is set, loads that file into the 'words' category.

 Example:
```
think suggest(words, ardvark)
AARDVARK AARDVARKS AARDVARK'S etc...
```


## See Also
- [@suggest]

