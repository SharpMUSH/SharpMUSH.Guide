# :
# ;
# pose
# semipose
`pose[/noeval] <action>`
`:<action>`

`pose/nospace[/noeval] <action>`
`semipose[/noeval] <action>`
`;<action>`

The pose and semipose commands allow you to perform actions. Pose shows your name, a space, and then `<action>`; semipose omits the space. They can be abbreviated to ':' and ';' respectively. The `/noeval` switch stops `<action>` from being evaluated.

If you have a SPEECHMOD attribute set, it will be evaluated with `<action>` as %0 and either : (for pose) or ; (for semipose) as %1. The result is used instead of `<action>`, as long as it returns a non-empty string.

See [pose2] for examples.

## See Also
- [say]
- [@emit]
- [@speechmod]
# pose2
Examples:
```
> pose waves.
Bob waves.
```

```
> :laughs out loud.
Bob laughs out loud.
> ;'s laughing on the inside.
Bob's laughing on the inside.
```

