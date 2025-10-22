# MESSAGE()
`message(<recipients>, <message>, [<object>/]<attribute>[, <arg0>[, ... , <arg9>][, <switches>]])`

  message() is the function form of @message/silent, and sends a message, formatted through an attribute, to a list of objects. See [@message] for more information.

  `<switches>` is a space-separated list of one or more of "nospoof", "spoof", "oemit" and "remit", and makes message() behaviour as per @message/`<switches>`. For backwards-compatability reasons, all ten `<arg>` arguments must be given (even if empty) to use `<switches>`.

  Examples:
```
&formatter #123
think message(me, Default> foo bar baz, #123/formatter, foo bar baz)
Foo Bar Baz
&formatter #123=Formatted> [iter(%0,capstr(%i0))]
think message(me, Default> foo bar baz, #123/formatter, foo bar baz)
Formatted> Foo Bar Baz
```

  > think message(here, default, #123/formatter, backwards compatability is annoying sometimes,,,,,,,,,,remit)
  Formatted> Backwards Compatability Is Annoying Sometimes


## See Also
- [@message]
- [oemit()]
- [remit()]
- [speak()]

