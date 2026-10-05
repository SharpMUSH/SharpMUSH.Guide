# Code Style
## Function and Command Responsibility
When creating functionality, it is important to consider the responsibility of Commands and Functions.

- Commands are used for Interaction, Creation, and Updates.
- Functions are used for Reads, Mapping or manipulating data, and string manipulation. 
- When using a function, preferably avoid using their side-effect capabilities.

### Responsibility Exceptions
There are function equivalents of most commands. This is in order to make that behavior available to locks and certain special attributes such as @oenter, which evaluate a function rather than running a command-list.

## Attribute Trees
Use Attribute Trees, which allows leaf attributes to inherit the flags and permissions from higher branch attributes.

## Function Composition
Attributes can be evaluated by functions such as u() and ulocal(). 
Use attributes to composite function functionality and keeping individual attributes or logic smaller.

## Command Composition
Commands can be evaluated by commands, such as @trigger and @include.
Use attributes to composite command functionality and keep individual attributes or logic smaller.

## Boolean Logic
Prefer cand() and cor() over and() and or(). The cancelling forms stop evaluating at the first argument that decides the result: cand() at the first false one, cor() at the first true one.

- Arguments after the deciding one are never evaluated, so put cheap tests first and expensive ones (u() calls, searches) last.
- A later argument can depend on the earlier ones holding: `` cand(isdbref(%0), u(me/FUN`IS`MEMBER, %0)) `` only calls the predicate for a real object.
- The negations follow the same rule: ncand() and ncor() over nand() and nor().

and(), or(), nand() and nor() always evaluate every argument. Use them only when each argument has a side effect that must run regardless of the result, which is rare once side effects live in commands.
