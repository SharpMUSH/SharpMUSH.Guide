# @force
`@force[/noeval][/inline] <object>=<action list>`

This command forces `<object>` to queue the given action list, as if the object had entered the action list itself. You must control `<object>` to @force it. @force is useful for manipulating puppets.

If `/inline` is given, `<object>` will run `<action list>` _now_, instead of being queued for execution later. By default, `<action list>` will be able to see/alter q-registers in the calling action list, and any @breaks in `<action list>` will also stop the calling action list. The following switches alter that behaviour:
- /nobreak: @breaks in `<action list>` will not stop the calling action list.
- /localize: q-registers will be saved before `<action list>` is run, and restored after.
- /clearregs: q-registers will all be reset before `<action list>` is run. You'll usually want to use /localize as well with this.

`@force/inplace` is an alias for `@force/inline/nobreak/localize`.

@force can be abbreviated as
`<dbref> <action list>`

See [@force2].
# @force2
Normally, the action list is evaluated twice - once when @force is run, and again when `<object>` runs the action list. If the `/noeval` switch is given, `<action list>` is not evaluated until it is run by `<object>`.

Examples:
```
> @create Lackey
Created: Object #103
> @force Lackey=go east
Lackey goes east.
Lackey has left.
> @force #103=page Cyclonus=Hi there!
Lackey pages: Hi there!
> #103 page Cyclonus=Whee
Lackey pages: Whee
```

See [@force3].
# @force3
Normally, @force creates a new queue entry. `@force/inline` does not.

Examples:
```
> @create Lackey
Created: Object #103
> &order me=$order *:say Lackey, %0 ; @force Lackey=%0 ; say Done?
> order pose salutes!
You say, "Lackey, pose salutes!"
You say, "Done?"
Lackey salutes!
```

```
> &order me=$order *:say Lackey, %0 ; @force/inline Lackey=%0 ; say Done?
> order pose salutes!
You say, "Lackey, pose salutes!"
Lackey salutes!
You say, "Done?"
```


## See Also
- [PUPPET]
- [DBREF]
- [objeval()]

