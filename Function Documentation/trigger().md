# trigger()
`trigger(<object>/<attribute>[, <arg0>[, ... <argN>]])`

  Does what `@trigger/quiet <object>/<attribute>=<arg0>,...` does, and returns nothing.

  trigger() is off unless the `mux_queue_functions` @config option is on; while it is off, trigger() returns `#-1 FUNCTION DISABLED`. A function that queues actions does work while it is only meant to work out a value, so SharpMUSH keeps queueing in commands. Importing a TinyMUX database turns the option on. trigger() is also refused when you may not use @trigger, and when side-effect functions are turned off.

  Example, with `mux_queue_functions` on:
```sharp
&GREET me=think Hello, %0!
think trigger(me/GREET, world)
Hello, world!
```

::: seealso
- [@trigger]
- [VERB()]
- [compatibility config]
:::

