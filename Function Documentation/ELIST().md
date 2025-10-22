# ITEMIZE()
# ELIST()
`itemize(<list>[, <delim>[, <conjunction>[, <punctuation>]]])`
`elist(<list>[, <conjunction>[, <delim>[, <osep>[, <punctuation>]]]])`

  These functions take the elements of `<list>` (separated by `<delim>` or a space by default), and:
   If there's just one, return it.
   If there's two, return `<e1>` `<conjunction>` `<e2>`
   If there's more than two, return `<e1>``<punc>` `<e2>``<punc>` ... `<conj>` `<en>`

  elist() uses `<osep>` after `<punc>`/`<conj>` instead of a space.
  The default `<conjunction>` is "and", default punctuation is ",".
  Examples:
```
say itemize(eggs) * [itemize(eggs bacon)]
You say, "eggs * eggs and bacon"
say itemize(eggs bacon spam)
You say, "eggs, bacon, and spam"
say itemize(eggs bacon spam, ,&,;)
You say, "eggs; bacon; & spam"
```

