# @runout
`@charges <object>[=<integer>]`
`@runout <object>[=<action list>]`

These attributes can limit how many times an object can be successfully "use"d. When you "use" an object with a CHARGES attribute set, the object's AUSE attribute is only triggered if CHARGES is a positive integer. When CHARGES is less than 1 (or not a number), the object's RUNOUT attribute is triggered instead.

When the CHARGES attribute is present and AUSE is triggered, the value of the CHARGES attribute is automatically decreased by 1. When no CHARGES attribute is set, AUSE is always triggered.

See [charges2] for an example.


## See Also
- [use]
- [@ause]
- [ACTION LISTS]

