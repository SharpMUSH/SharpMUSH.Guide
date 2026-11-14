# isjson()
`isjson(<text>[, <type>])`

  This function returns 1 if its argument is valid JSON, 0 if not. With a `<type>` it also asks what the JSON is: `string`, `number`, `object`, `array`, `true`, `false`, `null` or `boolean`. Any other type returns `#-1 UNKNOWN JSON TYPE`.

  Examples:
```sharp
think isjson(1)
1
think isjson(true)
1
think isjson(unquoted)
0
think isjson("quoted")
1
```


::: seealso
- [json()]
:::

