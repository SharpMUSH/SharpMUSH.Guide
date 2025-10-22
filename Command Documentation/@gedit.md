# @gedit
`@edit[/first][/check][/quiet] <object>/<attributes>=<search>, <replace>`
`@edit[/check][/quiet] <object>/<attributes>=$, <string to append>`
`@edit[/check][/quiet] <object>/<attributes>=^, <string to prepend>`

This command allows you to edit the contents of attributes, without having to retype the entire attribute.

All the attributes on `<object>` whose names match the wildcard pattern `<attributes>` will be searched for the string `<search>`, and each occurrence of it will be replaced with the string `<replace>`.

If `<search>` is "$", then `<replace>` will be added to the end of the attributes. When `<search>` is "^", `<replace>` will be added to the beginning of the attributes. (If you need to replace a single $ or ^, consider using @edit/regexp (see help @edit2) or the edit() function.)

If the `/first` switch is given, only the first occurrence of `<search>` in each attribute is replaced. If the `/check` switch is given, the attributes are not altered, you'll just be shown what would be changed (with the changes ansi-highlighted).

If the `/quiet` switch is given, you won't be shown the modified text, you'll just be told how many of the matching attributes were/weren't edited. Useful when edited a lot of large/spammy attributes.

`<search>` and `<replace>` are not evaluated, so you don't need to escape special characters. If either contains commas, however, you may need to wrap the string in {curly braces}.

See [@edit2].

