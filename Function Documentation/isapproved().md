# isapproved()
`isapproved(<object>)`

  Returns 1 if `<object>` is royalty or above, or holds the `approved` role (on itself or through its account), and 0 otherwise. A guest is never approved, whatever else is set on it.

  `approved` is the engine's general "this character has cleared whatever bar this game sets for full participation" role. The engine ships the role and this predicate and deliberately ships no policy for what earns it; a game decides that and assigns the role however it likes, with `@role/assign <player>=approved`.

  Softcode and the server answer this question with the same code, so a game's `+`-verbs cannot drift from the engine's own checks. Games that want a different rule should wrap this in one function attribute and call that everywhere, rather than re-implementing the test.

  Example:
```sharp
think isapproved(me)
1
&FUN`IS`APPROVED #100=isapproved(%0)
```


::: seealso
- [HASROLE()]
- [@role assigning]
- [roles]
:::

