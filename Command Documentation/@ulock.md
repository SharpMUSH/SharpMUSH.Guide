# @ulock
# @uunlock
`@ulock <object>[=<key>]`<br>
`@uunlock <object>`

These commands set the Use lock for `<object>` to `<key>`, or clear the Use lock. They are deprecated, and should be replaced with

`@lock/use <object>[=<key>]`<br>
and<br>
`@lock/use <object>`

The Use lock determines who is allowed to "use" the object or trigger any $-commands or ^-listens on the object.

To only lock who can use $-commands, use `@lock/command`. To only lock who can trigger ^-listens, use `@lock/listen`.

Example: if I want everyone but Bob to be able to use my toy, I would "`@lock/use toy=!*Bob`". If I want only Bob to be able to use it, I would "`@lock/use toy==*Bob`".


**See Also:**
- [@lock]
- [use]
- [locktypes]

