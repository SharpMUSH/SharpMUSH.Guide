# @warnings
`@warnings <object>=<warning list>`

This command will set the types of warnings which should be reported on an object or to a player. You must control the object to use this command.

When an object is checked for warnings (via @wcheck by the owner, or automatically), only warnings which are set to be reported on the object will be reported. If no warnings are set on the object, the owner's warning settings will be used. When admin use @wcheck to check non-owned objects, their personal warnings are always used.

For a list of warnings, see [warnings list].
For examples, see [@warnings2].


## See Also
- [@wcheck]
- [NO_WARN]
# @warnings2
Example 1: Normal building situations
Most people will simply want to leave their @warnings set to "normal" and their objects' @warnings set to "none". They will then receive normal warnings for all their objects.

Example 2: Warning-lover
People who find warnings very helpful (like heavy builders) may want to set their personal @warnings to "extra" or "all", and keep their objects' warnings at "none". If a specific object should be treated less strictly, set that object's @warnings differently. If an object shouldn't be warned on at all, set the NO_WARN flag on the object.

See [@warnings3].
# @warnings3
Example 3: Warning-hater
People who prefer not to be warned except for specific object may set their personal @warnings to "none" and set the @warnings on those objects to appropriate levels.

Example 4: I need some peace!
Players who @set themselves NO_WARN will receive no warnings ever until they unset the flag.

