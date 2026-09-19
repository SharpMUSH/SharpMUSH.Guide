# @config tiny
Options that help control compability with TinyMUSH servers.

- `null_eq_zero=<boolean>`: Is a null string where a number is expected considered a 0?
- `tiny_booleans=<boolean>`: Use Tiny-style boolean values where only non-zero numbers are true.
- `tiny_trim_fun=<boolean>`: Are the second and third arguments to trim() reversed?
- `tiny_math=<boolean>`: Is a string where a number is expected considered a 0?
- `silent_pemit=<boolean>`: Does @pemit default to @pemit/silent?
- `paren_groups=<boolean>`: Does an unescaped `(` that starts no function call open a literal group, as in PennMUSH? Its commas are text and its `)` does not close the call around it, so `cat(x,(a,b)c)` has two arguments. When off, escape literal parentheses inside function arguments with `\(` `\)` or `%(` `%)`. Importing a PennMUSH database turns it on.

