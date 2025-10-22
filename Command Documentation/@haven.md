# @haven
`@haven <player>[=<message>]`

When someone attempts to page `<player>` and is unable to, either because `<player>` is set HAVEN or because of his page lock, they will be shown `<message>`, if it evaluates to something non-null.

Example:
```
> @set me=HAVEN
> @haven me=I'm AFK and can't answer pages. Please @mail instead.
```


## See Also
- [HAVEN]
- [page]
- [@lock]
- [@away]
- [@idle]

