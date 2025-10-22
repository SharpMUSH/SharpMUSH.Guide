# SOUNDLIKE()
# SOUNDSLIKE()
`soundslike(<word>, <word>[, <hash type>])`
`soundlike(<word>, <word>[, <hash type>])`

  The soundslike function returns 1 if the two words have the same hash code (see [soundex()] for information), which means, in general, if they sound alike. The hash type can be 'soundex' (Default) or 'phone' for a different algorithm that might give better results with some words.

  Examples:
```
think soundslike(robin,robbyn)
1
think soundslike(robin,roebuck, phone)
0
```


## See Also
- [soundex()]

