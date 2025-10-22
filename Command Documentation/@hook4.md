# @hook4
`@hook/extend` can be used to add new features to a built-in command, via additional switches, without forcing you to also rewrite the existing functionality like `@hook/override` would. For example:
```
> &who`active #123=$who/active*: @nspemit %#=ufun(fun_who, lwho(%#), switch(%0, ?*, stringsecs(%0)))
> &who`staff #123=$who/staff: @nspemit %#=ufun(fun_who, setunion(lwho(%#), lsearch(all, elock, type^player&(flag^wizard|flag^royalty)))
> @hook/extend WHO=#123
```

This leaves the built-in WHO command working as normal, but adds two new switches for filtering the output in different ways.

`@hook/igswitch` is an alias for `@hook/extend`, for Rhost compatability.

