# @wcheck
`@wcheck <object>`
`@wcheck/all`
`@wcheck/me`

The first form of the command performs warning checks on a specific object. The player must own the object or be see_all. When the owner runs the command, the @warnings of the object are used to determine which warnings to give. If the object has no @warning's set, the @warnings of the owner are used. When a non-owner runs the command, the @warnings of the non-owner are used.

The second form of the command runs @wcheck on every object in the database and informs connected owners of warnings. It is usually automatically run by the MUSH at intervals. Only Wizards may use `@wcheck/all`.

The third runs it on all objects the player owns that aren't set NO_WARN.


## See Also
- [@warnings]
- [WARNINGS]
- [NO_WARN]

