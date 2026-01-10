# TR()
`tr(<string>, <find>, <replace>)`

  This function translates every character in `<string>` that exists in `<find>` to the character at an identical position in `<replace>`. Ranges of characters separated by -'s are accepted. `<find>` and `<replace>` must be the same length after expansion of ranges. If a character exists more than once in `<find>`, only the last instance will be counted. The example below is the common ROT-13 algorithm for lower case strings, demonstrated with every letter explicitly listed, and with the equivalent but briefer character ranges. Literal -'s can be in `<find>` and `<replace>` if they are the first or last characters in the arguments.

   Examples:
```
say tr(hello,abcdefghijklmnopqrstuvwxyz,nopqrstuvwxyzabcdefghijklm)
You say, "uryyb"
say tr(uryyb, a-z, n-za-m)
You say, "hello"
```


## See Also
- [merge()]
- [splice()]

