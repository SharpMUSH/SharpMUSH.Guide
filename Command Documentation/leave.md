# leave
`leave`

The command leave allows you to exit an object you have enter'ed into. When you leave an object, its @leave/@oleave/@oxleave messages are triggered, and its @aleave actions are triggered.

`leave` outputs the dbref of the room you arrive in.

`leave/quiet` leaves out your @move and @omove messages. With the `mux_quiet` @config option on, it leaves out the object's @leave and @oleave messages and the @oxenter of where you go instead, when you control the object you leave; its @aleave still runs.

The NO_LEAVE flag may be enabled on some MUSHes. Objects set with this flag cannot be left. @lock/leave may also be enabled on some MUSHes, which allows you to set who can leave the object. If you fail to leave, the object's @lfail/@olfail/@alfail messages/actions will be triggered.


::: seealso
- [enter]
- [@leave]
- [@lfail]
- [@ealias]
- [LOCKING]
- [interiors]
:::

