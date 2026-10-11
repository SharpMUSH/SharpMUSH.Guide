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

## Brackets
A function call evaluates on its own wherever it starts a piece of code, and needs `[]` only when it comes after something else. Each pair of brackets is one more step for the parser, paid again on every pass of a loop, so leave them out where they change nothing.

A piece of code starts at:

- the start of an attribute that u(), a lock or an event evaluates: `` &FUN`NEXT obj=add(%0,1) ``
- the start of each function argument: `add(mul(2,3),1)`, `iter(%0,name(%i0))`
- the start of each command argument: `think setq(total,0)`, `` @pemit %#=u(FUN`DISPLAY) ``, `@assert cand(%0,%1)=...`

Text after a leading call is still evaluated, so `name(%#) says hello` needs no brackets either.

Brackets are needed for a call that follows:

- text: `think Total: [add(%0,%1)]`
- a substitution: `%q<label>[add(%0,1)]`
- another call: `ibreak()[add(%0,1)]`
- text inside an argument: `iter(%0,%i0: [name(%i0)])`. Without them the call's own commas and closing paren split and close `iter()`.

Brackets do not stop code from evaluating: run from inside an attribute, `&OUT obj=add(1,2)` stores `3`. Use braces, `&OUT obj={add(1,2)}`, to store code as written.

A function's name followed straight away by `(` at the start is a call even when it was meant as text: `@pemit %#=name(s) of the winners` prints `#-1 NO MATCH of the winners`. Write `\name(s)`.

## Boolean Logic
Prefer cand() and cor() over and() and or(). The cancelling forms stop evaluating at the first argument that decides the result: cand() at the first false one, cor() at the first true one.

- Arguments after the deciding one are never evaluated, so put cheap tests first and expensive ones (u() calls, searches) last.
- A later argument can depend on the earlier ones holding: `` cand(isdbref(%0), u(me/FUN`IS`MEMBER, %0)) `` only calls the predicate for a real object.
- The negations follow the same rule: ncand() and ncor() over nand() and nor().

and(), or(), nand() and nor() always evaluate every argument. Use them only when each argument has a side effect that must run regardless of the result, which is rare once side effects live in commands.

## Authorization
Ask the game who may do what instead of keeping a list of staff. Gate a command on a permission with permission(%#, <permission>), and use roles to tag what someone is, such as Approved. See [Roles and Permissions](Roles%20and%20Permissions.md).

## Layout
Draw a screen with the layout functions, not with padding: box() for a titled frame, rule() for dividers, fields() for labelled values, datatable() and datacolumns() for tables. Leave their width empty so each reader gets the layout at their own width, and the web portal and screen readers get structure instead of box art. See [Layout](Layout.md).

## Paging
A command whose list can outgrow the reader's screen shows it a page at a time, and takes the page as its last switch: `+scene/old/2`, `+jobs/2`, `+help/list/3 <source>`. Without one, the reader gets the first page.

- Match the page in the command's pattern, after any other switch, so `+scene/old`, `+scene/ol` and `+scene/ol/2` are the same command: `` $(?is)^\+scene/ol(?:d)?(?:/(\d+))?$ ``. A command that parses its switches itself takes a last switch of digits as the page.
- Size a page from the reader's screen, `height(%#, 24)`, less the lines the frame takes.
- End each page but the last with the command for the next one, as typed: `page 1 of 3 - +scene/old/2`.
- Answer a page past the end with how many pages there are, and a page of 0 with the command's usage line. A command that lists nothing says it takes no page number.
