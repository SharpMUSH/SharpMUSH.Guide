# ISJSON()
`isjson(<text>)`

  This function returns 1 if its argument is valid JSON, 0 if not.

  Examples:
```
think isjson(1)
1
think isjson(true)
1
think isjson(unquoted)
0
think isjson("quoted")
1
```


## See Also
- [json()]

