# @clone
`@clone <object>[=<new name>[, <dbref>]]`
`@clone/preserve <object>[=<new name>[, <dbref>]]`

This command creates a copy of `<object>`. The clone will have the same name as the original unless a `<new name>` is given for it. You can only clone things, rooms and exits, not players. You must control `<object>`. The new object will be owned by the player who performs the @clone, not the owner of the original `<object>`.

When cloning things and exits, the clone will be placed in your current location, not the location of `<object>`. When cloning rooms, the exits and contents in the room are not cloned as well.

The cloned object will have the same modification time as the original object, to make tracking revisions easier, but will have a different creation time.

Normally, the Wizard and Royalty flags, @powers and @warnings are stripped from the cloned object, but Wizards may use the `/preserve` flag to prevent this.

The clone will normally be created with the first available dbref, but Wizards and objects with the pick_dbref power may specify the `<dbref>` of a garbage object to use that instead.

To clone a room and all its exits, use code like:
```
> @teleport setq(0,%L)[clone(here)]
> @dolist lexits(%q0)=@clone ##
```

Note: If @create is restricted or disabled, it will also restrict or disable this command.


## See Also
- [@create]
- [clone()]
- [create()]
- [@cpattr]

