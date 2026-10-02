# REGREPLACE()
`regreplace(<string>, <regexp>, <replacement>[, <flags>])`

  Replaces every part of `<string>` that matches `<regexp>` with `<replacement>`, and returns the result. `<replacement>` may refer to captured groups with `$1`, `$2` and so on, or by name with `${name}`.

  `<flags>` is a string of letters; only `i` (match case-insensitively) is meaningful. Replacement is always global, so a `g` is accepted and changes nothing. An invalid `<regexp>` returns `#-1 INVALID REGEX`.

  Its replacement tokens and numeric group order are those of .NET, unlike `regedit()` softcode captures. Use `lit()` when the replacement contains literal braces, for example `lit(${name})`.

  This is a SharpMUSH function. PennMUSH spells the same idea [REGEDIT()], which takes alternating pattern/replacement pairs instead of a flags argument and uses `$1` / `$<name>` softcode capture substitutions.


**See Also:**
- [REGEDIT()]
- [regmatch()]
- [regexp syntax]

