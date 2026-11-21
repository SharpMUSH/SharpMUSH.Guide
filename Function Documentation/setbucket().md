# setbucket()
`setbucket(<player>, <name>[, <json>])`

  Keeps `<json>` in the bucket `<name>` on the account `<player>` is linked to, replacing what the bucket held. With `<json>` empty or left out, it removes the bucket. It returns nothing.

  `<name>` is 1 to 64 printable ASCII characters with no spaces, and ignores case. `<json>` is one JSON value: an object, array, string, number, true, false or null. Its UTF-8 bytes are no more than `max_attribute_value_length`. An account holds up to 1000 buckets.

  It needs the `players.moderate` permission, so players cannot change their own buckets. It returns:

- #-1 PERMISSION DENIED: NEEDS PLAYERS.MODERATE without the permission.
- #-1 BUCKET NAME MUST BE 1 TO 64 PRINTABLE ASCII CHARACTERS WITHOUT SPACES for a bad `<name>`.
- #-1 INVALID JSON when `<json>` is not JSON.
- #-1 BUCKET VALUE TOO LONG when `<json>` is over the limit.
- #-1 PLAYER IS ON NO ACCOUNT when `<player>` has no account.
- #-1 ACCOUNT ALREADY HAS 1000 BUCKETS for a new bucket on a full account.

  Example:
```sharp
think setbucket(*Ariel, settings, json(object, theme, json(string, dark)))
think getbucket(*Ariel, settings)
{"theme":"dark"}
think setbucket(*Ariel, settings)
think lbuckets(*Ariel)
stats
```


::: seealso
- [GETBUCKET()]
- [LBUCKETS()]
- [accounts buckets]
:::

