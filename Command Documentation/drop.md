# drop
`drop <object>`

Drops `<object>`, if you are presently carrying it. If the room the object is dropped in has a DROP-TO set, the object may automatically be sent to another location.

In order to drop an object, you must pass it's Drop lock and your location's DropIn lock.

`drop/quiet` leaves out the drop message and @odrop; @adrop still runs. With the `mux_quiet` @config option on, it leaves out @odrop and @adrop instead, and only when you control the object; you still see the drop message.


::: seealso
- [empty]
- [get]
- [STICKY]
- [DROP-TOS]
:::

