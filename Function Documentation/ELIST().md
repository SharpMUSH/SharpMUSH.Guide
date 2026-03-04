# ITEMIZE()
# ELIST()
`itemize(<list>[, <delim>[, <conjunction>[, <punctuation>]]])`<br>
`elist(<list>[, <conjunction>[, <delim>[, <osep>[, <punctuation>]]]])`

  These functions take the elements of `<list>` (separated by `<delim>` or a space by default), and:<br>
   If there's just one, return it.<br>
   If there's two, return `<e1>` `<conjunction>` `<e2>`<br>
   If there's more than two, return `<e1>``<punc>` `<e2>``<punc>` ... `<conj>` `<en>`

  elist() uses `<osep>` after `<punc>`/`<conj>` instead of a space.<br>
  The default `<conjunction>` is "and", default punctuation is ",".<br>
  Examples:
```sharp
say itemize(eggs) * [itemize(eggs bacon)]
You say, "eggs * eggs and bacon"
say itemize(eggs bacon spam)
You say, "eggs, bacon, and spam"
say itemize(eggs bacon spam, ,&,;)
You say, "eggs; bacon; & spam"
```

