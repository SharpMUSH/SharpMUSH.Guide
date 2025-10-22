# @destination
# @exitto
# Variable Exits
`@destination <exit>[=<destination>]`
`@exitto <exit>[=<destination>]`

The DESTINATION attribute is used by variable exits. To make a variable exit, you create it in the usual way (with @open), then @link it to "variable" instead of a dbref. When someone attempts to pass through the exit, the DESTINATION attribute will be evaluated, and should return a dbref; the dbref will be used as the location for the person to go to. The exit name or alias the moving player used is passed to the attribute as %0.

The exit must be able to @link itself to the dbref returned by the attribute. This means the exit must control the destination, the destination must be set LINK_OK, or the exit must have the Link_Anywhere @power.

If no DESTINATION attribute is set on a variable exit, the MUSH will also check for an EXITTO attribute, for cross-platform compatability. It works exactly the same as the DESTINATION attribute.

Note that, unlike most attributes, @destination cannot be abbreviated and must be typed in full.

Example:
```
> @open Random Exit;re
> @link re=variable
> @power re=link_anywhere
> @destination re=pickrand(#5 #123 #999 [home(%#)] %L)
```


## See Also
- [EXITS]
- [@link]
- [@open]
- [LINK_OK]
- [Link_Anywhere Power]

