# @haven
`@haven <player>[=<message>]`

When someone tries to page `<player>` and cannot, either because `<player>` is set HAVEN or because of `<player>`'s page lock, they are shown `<message>`, if it evaluates to something non-null.

### Example
```sharp
> @set me=HAVEN
> @haven me=I'm AFK and can't answer pages. Please @mail instead.
```


::: seealso
- [HAVEN]
- [page]
- [LOCKING]
- [@away]
- [@idle]
:::

