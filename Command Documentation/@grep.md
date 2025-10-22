# @grep
`@grep[/<switches>] <object>[/<attrs>]=<pattern>`

@grep returns a list of all attributes on `<object>` which match `<pattern>`. If `<attrs>` is specified, only attributes which match the wildcard pattern `<attrs>` are checked; it defaults to "*". Use "**" for all attributes.

By default, attributes which contain the string `<pattern>` are returned. However, if the `/wild` switch is given, `<pattern>` is treated as a wildcard pattern, and attributes which match the pattern are returned. If the `/regexp` switch is given, `<pattern>` is treated as a regular expression, and attributes matching the regexp are returned. Please note that `<pattern>` will NOT be evaluated, so you can easily grep for code strings.

All matches are case-sensitive, unless the `/nocase` switch is given.

@grep only shows a list of matching attributes. However, you can specify the `/print` switch, in which case attribute values are also shown, with the matching substrings ansi-highlighted if appropriate.

If the `/parent` switch is given, attributes `<object>` inherits from its parent(s) will be checked as well.

For backwards compatability, the `/list` switch provides the default behaviour of listing attributes without printing the values, and `/ilist` and `/iprint` are aliases for `/list/nocase` and `/print/nocase`.


## See Also
- [grep()]
- [wildgrep()]
- [regrep()]
- [WILDCARDS]

