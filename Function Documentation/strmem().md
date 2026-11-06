# strmem()
`strmem(<string>)`

  Returns how many bytes `<string>` takes in UTF-8, without markup. For plain ASCII text it is the same as strlen(); a character outside ASCII takes 2 to 4 bytes.

  Examples:
```sharp
think strmem(This is a test)
14
think strmem(chr(233))
2
```

::: seealso
- [STRLEN()]
:::

