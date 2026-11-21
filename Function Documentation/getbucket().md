# getbucket()
`getbucket(<player>, <name>)`

  Returns the JSON kept in the bucket `<name>` on the account `<player>` is linked to. It returns nothing when there is no such bucket or `<player>` is on no account. Bucket names ignore case; a name that breaks the rules in [setbucket()] returns #-1 BUCKET NAME MUST BE 1 TO 64 PRINTABLE ASCII CHARACTERS WITHOUT SPACES. See [accounts buckets] for what a bucket is.

  It needs the `players.view` permission, unless you are `<player>` or another character on the same account. Otherwise it returns #-1 PERMISSION DENIED.

  Example:
```sharp
think setbucket(*Ariel, stats, json(object, xp, 12))
think getbucket(*Ariel, stats)
{"xp":12}
think json_query(getbucket(*Ariel, stats), get, xp)
12
```


::: seealso
- [LBUCKETS()]
- [SETBUCKET()]
- [accounts buckets]
:::

