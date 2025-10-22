# SWITCH WILDCARDS
  @switch, @select, switch(), and switchall() normally do wildcard matching between their first argument and the `<expr>`ession arguments, with the normal * and ? special characters. However, if one of the `<expr>`essions starts with "`<" or ">`", a less-than or greater-than check is done instead of wildcard matching for that pair.

  switch(X, >Y, A, B) returns A if X is greater than Y, and B if it's not.
  switch(X, >=Y, A, B) returns A if X is greater than or equal to Y, and B if it's not.

  switch(X, <Y, A, B) returns A if X is less than Y, and B if it's not.
  switch(X, <=Y, A, B) returns A if X is less than or equal to Y, and B if it's not.

  If X and Y are numbers, the test is like using gt()/lt() or gte()/lte().

  If X and Y are non-numeric strings, the result of comp(X,Y) is used to determine which string is alphabetically before (less than) the other.

  If you need to have a leading `< or >` that's treated like a normal character in a wildcard match, use \\`< or \\>` (the \\ will turn into \ when the argument is evaluated, and then that single \ will stop the greater/less than check).


## See Also
- [WILDCARDS]

