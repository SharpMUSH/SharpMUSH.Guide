# @cpattr
# @mvattr
`@cpattr[/noflagcopy] <obj>/<attr>=<obj1>[/<attr1>][, ..., <objN>[/<attrN>]]`
`@mvattr[/noflagcopy] <obj>/<attr>=<obj1>[/<attr1>][, ..., <objN>[/<attrN>]]`

@cpattr copies the `<attr>` attribute from `<obj>` to `<obj1>` (and any other objects given). By default, the new attributes will have the same name as the original, but you can specify a different name to be used on each object if you wish.

@mvattr works the same, but also attempts to remove the original attribute after copying it.

Attribute flags are copied as well, unless the `/noflagcopy` switch is given. This is recommended when copying from a non-standard attribute to a standard one.

Example:
```
> @cpattr box/test=box/test1, cube/random, tribble/describe
```
would check the object "box" for an attribute named TEST and then copy it to the attributes TEST1 on "box", RANDOM on the object named "cube", and DESCRIBE on the object named "tribble".
```
> @cpattr box/test=cube
```
would copy the TEST attribute from "box" to TEST on "cube".


## See Also
- [ATTRIBUTES]
- [NON-STANDARD ATTRIBUTES]
- [@set]

