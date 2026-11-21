# lbuckets()
`lbuckets(<player>)`

  Returns the names of the buckets on the account `<player>` is linked to, in ASCII order, separated by spaces. It returns nothing when the account has none or `<player>` is on no account.

  It needs the same permission as [getbucket()].

  Example:
```sharp
think lbuckets(me)
settings stats
```


::: seealso
- [GETBUCKET()]
- [SETBUCKET()]
- [accounts buckets]
:::

