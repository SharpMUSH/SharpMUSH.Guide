# @edit2
`@edit/regexp[/all][/nocase][/check][/quiet] <object>/<attributes>=<regexp>,<replace>`

When the `/regexp` switch is given, @edit performs a regular expression replacement, similar to the regedit() function. Normally, only the first match per attribute will be replaced; if the `/all` switch is given, all possible matches in each attribute are replaced (as per regeditall()).

Regexp matches are case-sensitive by default, but the `/nocase` switch can be given to make them case-insensitive (as per regediti()/regeditalli()).

The `/check` and `/quiet` switches work the same as for non-regexp @edits.

Note that, unlike normal @edits, the `<replace>` for an `@edit/regexp` WILL be evaluated, once for each replacement made, with the $0 token being replaced with the overall matching text, $1 with the first subexpression, and so on. Named subexpressions are also possible via `$<name>`.

Example:
```
> &foo me=Block of text/Wed Feb 22 22:54:02 2012/#10010
> @edit/regexp me/foo=^(.+)/([^/]+)/(#[0-9]+(?::[0-9]+)?)$, ucstr($1) -- [convtime($2)] -- [name($3)]
FOO - Set: BLOCK OF TEXT -- 1329951242 -- Minion
```
Replace a literal '^' with 'v'
```
> @edit/regexp me/bar=\^, v
```


## See Also
- [edit()]
- [regedit()]
- [ATTRIBUTES]
- [WILDCARDS]

