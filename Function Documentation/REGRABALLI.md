# REGRABALLI()
`graball(<list>, <pattern>[, <delim>[, <osep>]])`
`regraball(<list>, <regexp>[, <delim>[, <osep>]])`
`regraballi(<list>, <regexp>[, <delim>[, <osep>]])`

  These functions work identically to the grab() and regrab()/regrabi() functions, except they return all matches, not just the first: They return all words in the `<list>` which match `<pattern>`. If none match, an empty string is returned. `<delim>` defaults to a space, and `<osep>` defaults to `<delim>`.

  Examples:
```
say graball(This is a test of a test,test)
You say "test test"
say graball(This|is|testing|a|test,tes*,|)
You say "testing|test"
say regraball(This is testing a test,s$)
You say "This is"
```


## See Also
- [match()]
- [matchall()]
- [grab()]
- [regmatch()]

