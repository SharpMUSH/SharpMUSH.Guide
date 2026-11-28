# get()
# xget()
`get(<object>/<attribute>)`<br>
`xget(<object>, <attribute>)`

  These functions return the string stored in an `<object>`'s `<attribute>` attribute, without evaluating it. You must be able to examine the attribute. get() and xget() are identical, apart from the argument separator.

    Example:
```sharp
&test me=This is [a test].
think get(me/test)
This is [a test].
```

  `<object>` can be an account's `#acct:<key>`, which [account()] returns. Its characters and staff with `players.view` read it; see [accounts attribute permissions].

    Example:
```sharp
think get(account(me)/XP)
10
```


::: seealso
- [HASATTR()]
- [VISIBLE()]
- [accounts attributes]
- [u()]
- [DEFAULT()]
- [UDEFAULT()]
:::

