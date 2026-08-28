# ISAPPROVED()
`isapproved(<object>)`

  Returns 1 if `<object>` is royalty or above, or carries the APPROVED flag, and 0 otherwise. A guest is never approved, whatever else is set on it.

  APPROVED is the engine's general "this character has cleared whatever bar this game sets for full participation" flag. The engine ships the flag and this predicate and deliberately ships no policy for what earns it — a game decides that and sets the flag however it likes (royalty and above can set and unset it).

  Softcode and the server answer this question with the same code, so a game's `+`-verbs cannot drift from the engine's own checks. Games that want a different rule should wrap this in one function attribute and call that everywhere, rather than re-implementing the test.

  Example:
```sharp
think isapproved(me)
1
&FUN`IS`APPROVED #100=isapproved(%0)
```


**See Also:**
- [hasflag()]
- [@flag]
- [flags list]

