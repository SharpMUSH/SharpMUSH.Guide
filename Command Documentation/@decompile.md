# @decompile
`@decompile[/<switches>] <object>[=<prefix>]`
`@decompile[/<switches>] <object>/<attribute patterns>[=<prefix>]`

@decompile outputs a list of the commands that you would have to enter in order to recreate `<object>`. Useful for either copying objects from one MUSH to another, or for making logs of important objects to protect against an accidental @nuke or a crash.

All output lines are prefixed with `<prefix>`, if one is given. This is useful for creating client-side scripts for editing code.

You can either @decompile an entire object, or just certain parts of it. To @decompile just a few attributes, for example, you could type:
```
@decompile <object>/<attribute pattern> [ ... <attribute patternN>]
```
including each attribute. Attribute patterns can be wildcards.

See [@decompile2].

