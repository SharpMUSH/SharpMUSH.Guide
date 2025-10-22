# PARSE()
`iter(<list>, <pattern>[, <delimiter>[, <output separator>]])`

  For each word in `<list>`, iter() evaluates `<pattern>` once, and returns a list of the results of those evaluations. Words in `<list>` are separated by `<delimiter>`, if given, and spaces if not. Words in the resulting list are separated by the given `<ouput separator>`, or a space if no output separator is given.

  Prior to each evaluation, every occurrence of the string "##" in `<pattern>` is replaced with the current word from `<list>`. However, because this replacement occurs before evaluation, it cannot be used well in nested iter()s, and should not be used on user input or untrusted `<list>`s, as the word will be evaluated. Instead, you can use the %iX substitution, or the itext() function. The substitution '%iL' refers to the outermost iter of the current expression, and is intended to replace ##.

  The string "#@" will be replaced with the position of the current word in `<list>`. Like "##", the replacement occurs before substitution. Use the inum() function for nested iter()s.

  If you nest iter()s, ## and #@ refer to the first/outermost iter(). The ilev() function can be used to get the current iter() nesting level.

  parse() is an alias for iter().

  See [iter2] for examples.

## See Also
- [itext()]
- [inum()]
- [ilev()]
- [ibreak()]
- [map()]
- [@dolist]

