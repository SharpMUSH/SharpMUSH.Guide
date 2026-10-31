# verb()
`verb(<victim>[, <actor>[, <what>, <whatd>, <owhat>, <owhatd>, <awhat>[, <arg0>, ... <argN>]]])`

  Does what `@verb <victim>=<actor>,<what>,...` does, with the same arguments in the same order, and returns nothing. `<actor>` defaults to the enactor.

  Like trigger(), verb() is off unless the `mux_queue_functions` @config option is on, and returns `#-1 FUNCTION DISABLED` while it is off, because `<awhat>` is queued. It is also refused when you may not use @verb, and when side-effect functions are turned off.

  Example, with `mux_queue_functions` on:
```sharp
&XTEST obj=You test the object.
&OXTEST obj=tests the object.
think verb(obj, me, XTEST, Default, OXTEST, odefault)
You test the object.
```

::: seealso
- [@verb]
- [TRIGGER()]
- [compatibility config]
:::

