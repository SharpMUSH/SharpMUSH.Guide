# WRAP()
`wrap(<string>, <width>[, <first line width>[, <line separator>]])`

  This function takes `<string>` and splits it into lines containing no more than `<width>` characters each. If `<first line width>` is given, the first line may have a different width. If `<line separator>` is given, it is inserted between each line; by default the separator is a newline (%r).

  Examples:
```
@desc here=wrap(Wrapped paragraph, 72)
@desc here=wrap([space(4)]Indented paragraph, 72)
@desc here=iter(wrap(Hanging indent, 72, 76, %r), switch(#@, >1, space(4))%i0, %r, %r)
```

