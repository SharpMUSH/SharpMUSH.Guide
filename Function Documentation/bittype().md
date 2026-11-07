# bittype()
`bittype([<object>])`

  Returns how high the roles of `<object>`'s owner rank, as a step on the 0 to 7 scale RhostMUSH and TinyMUX code compares. With no argument, `<object>` is you. Each step is a role, and the owner reaches it by holding a role whose priority is at least that role's:

- 7: God
- 6: `immortal`
- 5: `wizard`
- 4: `royalty`, or `councilor` if lower
- 3: `builder`, or `architect` if lower
- 2: `helper` or `guildmaster`, whichever the game has
- 1: anyone else
- 0: a guest

  A game's own roles fall in by their priority: a `moderator` above royalty is 4. New code asks for a role by name instead: `hasrole(<object>, wizard, 1)` is bittype() at least 5. A RhostMUSH import writes gt(), gte(), lt() and lte() comparing bittype() with a number that way.

  Example:
```sharp
think bittype(#1)
7
```

::: seealso
- [HASROLE()]
- [ROLES()]
:::

