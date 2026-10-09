---
name: writing-sharpmush-softcode
description: Use when writing, reviewing, or debugging SharpMUSH softcode — $-commands, +commands, MUSH functions, attribute code, event handlers, or HTTP endpoints on a SharpMUSH game. Covers SharpMUSH's own idioms — pre-seeded #8/#9 handlers, routed HTTP, pipeline functions, backtick attribute trees, role and permission checks, layout functions for screens — and how to look the rest up in its helpfiles.
---

# Writing SharpMUSH Softcode

SharpMUSH is a functional MUSH server with its own idioms: handlers come pre-populated, HTTP is routed, and pipeline functions cover what used to take contortions.

**Work from the docs.** Category index (`help function types`, or the top of `sharpfunc.md`) → `help <topic>` → write. `@list/functions` lists every function on the game; `@function` the game's own globals. Helpfiles: `SharpMUSH.Documentation/Helpfiles/SharpMUSH/*.md`, also published as `SharpMUSH.Guide` on Context7. Open the index whenever the question is "who or what is in X" — one function usually answers it, and reaching for `iter`/`filter` first is how you miss it.

---

# Language

## Evaluation

- **A function after literal text needs `[brackets]`**: `think Kept: [filter(...)]`. A bare leading function evaluates alone: `&F obj=add(%0,1)` works, `&F obj=ibreak()add(%0,1)` does not — write `ibreak()[add(%0,1)]`.
- **A literal `[ ] ( )` needs `%[` `%]` `%(` `%)`.** An unescaped `(` inside a function argument closes the call early — `` [header(Home ([wiki(%0,namespace)]))] `` prints `Home (main` and leaks the `)` after the rule. `\[` also escapes, but only where the backslash survives to evaluation: it does in a value the package manager or `@set` wrote, and inside a `[...]` region, but a client-typed `&ATTR obj=A\[B\]C` stores `A[B]C` and the bracket is then read as an evaluation bracket. `%[` survives every path — prefer it.
- **`[[]x[]]` is not an escape for `[x]`.** An empty `[]` is not a function call, and SharpMUSH refuses it — sometimes as `#-1 PARSER FAILURE`, sometimes by swallowing the whole line, so `&ATTR me=A[[]x[]]B` can silently store nothing at all. (PennMUSH evaluates it away to a bare `x`, so the brackets are lost there too.) Escape them.
- **Never bracket a bare %-substitution.** `%0`, `%q<name>`, `%#` as-is; `[%0]` does nothing.
- **Player-typed input is single-command mode**: a typed `;` is literal. Command lists exist only inside stored attributes and command arguments. Brace `{}` a segment whose own `;` must not split the list.
- **`&` vs `@set` on the value.** `@set obj/ATTR=<v>` always evaluates `<v>`. `&ATTR obj=<v>` stores verbatim when typed at a client — which is why `&` stores code — but evaluates when run from inside an attribute. Brace `{}` what must survive.
- **Executor identity depends on how you were called.** A hardcode-invoked template — a `` RENDERMARKUP`<ELEMENT> `` for `rendermarkdowncustom()` — is evaluated with the **caller** as executor, so `me`/`%!` is not the object holding it and `` me/FUN`X `` silently resolves against the wrong object. Address its helpers by explicit dbref. A global `@function` is the opposite: it runs as its backing object. Check which you have before writing `me/`.
- **Clearing: omit the `=`.** `&ATTR obj` always clears. `&ATTR obj=` clears only when `empty_attrs` is off; otherwise it stores empty. Cleanup written with `=` works on one game and silently leaves data on another.
- **Truthiness.** `if()`, `@assert`, `@break`, `filterbool()` already test it, so `t()` inside them is always redundant: `if(t(%1),…)` is `if(%1,…)`. Empty and `0` are falsy, everything else truthy — including `{}`, so an empty JSON object is *true*; test the list you built it from. `filter()`/`filterq()` are the exception, keeping only exactly `1`.
- **Booleans: `cand()`/`cor()`, not `and()`/`or()`.** The `c` forms stop at the first argument that settles the answer and never evaluate the rest, so a costly test placed last runs only when it matters, and a later argument can rely on the earlier ones: `` cand(isdbref(%0), u(me/FUN`IS`MEMBER, %0)) `` never calls the predicate on a non-object. Same for the negations: `ncand()`/`ncor()` over `nand()`/`nor()`. `and()`/`or()` evaluate every argument; reach for them only when each argument has a side effect that must run.
- **`@assert` is not if-then** — it *stops the list*. For a conditional effect, compute the value instead: `&WORN obj=[if(strmatch(%q<w>,%q<old>),%q<new>,%q<w>)]`.

## Substitutions

`%0`–`%9` args · `%#` enactor dbref · `%:` enactor objid · `%!` executor · `%L` enactor's location · `%q<name>` named register (`setq`/`setr`; case-insensitive) · `%i0`/`itext(0)` current iteration element · `%b` space · `%r` newline.

## Registers and their scope

A q-register lives for the whole queue entry: set it in one command and every later command in the list reads it, and so does code the list runs with `@include` or `@trigger` (which copies the registers it is given). That is what makes `think [setq(…)]` before the real work useful, and it is also how a callee overwrites a register its caller still needs.

Fence a callee off when it sets registers of its own:

| Running | Use | Registers it sets |
|---|---|---|
| a function attribute | `ulocal(obj/attr, …)` in place of `u()` | discarded on return |
| an expression | `localize(<expr>)` | discarded |
| an expression with a few set for it | `letq(<reg>, <value>, …, <expr>)` | only the listed ones restored |
| an attribute of commands | `@include/localize`, `@trigger/localize` (`@trigger/inplace` includes it) | restored after |
| a list per item, or per case | `@dolist/localize`, `@switch/localize`, `@force/localize` | restored after each run |
| a hooked command | `@hook/localize` (`@hook/inplace` includes it) | restored after |
| an `@function` | `@function/preserve`, or the `localize` restriction | discarded on return |

Add `/clearregs` to start the callee with no registers at all. `listq([<pattern>])` lists the registers set in the current scope and `unsetq([<patterns>])` clears them; both are the way to see what reached you.

Every built-in command also sets registers for what it runs: always `ARGS` (its whole argument text), `LS` and `LSAC` (how many arguments), `RS` and `EQUALS` when it was split on `=`, `SWITCHES` when it has switches, and `LSA1`, `LSA2`… per argument. They reach `@trigger`ed code and the rest of a queued list, and `listq()` shows them, so never use those names for your own registers. A command's own arguments do not see its set: `think %q<ls>` typed at the prompt gives nothing.

## Attribute names

- **Trees use backticks**: `` CMD`SETRANK ``, `` DATA`GUILD`<key> ``. `*`/`?` stop at a backtick; `**` crosses it.
- **A tree path is just a name.** Backticks are part of the name, not separate syntax, so anywhere a name is accepted a path is: `get()`, `lattr()` patterns, `@attribute/access`, attribute locks — `` lsearch(all,type,player,elock,GROUP`IRONGUARD:*) `` finds every player holding that leaf, free.
- Legal characters are limited (no `:`, so **an objid cannot be a key**). Validate player input before it becomes a name: `` @assert regmatch(setr(key,ucstr(%0)),^[A-Z0-9_-]+$) ``.

---

# Reference

## Core tools

| Need | Use |
|---|---|
| Read stored data (SAFE — no evaluation) | `get(obj/attr)`, `v(attr)` |
| Evaluate a code attribute | `u(obj/attr, args…)`; `ulocal()` when the callee touches q-registers |
| Set data | `&ATTR obj=value` / `attrib_set()` — effects belong in commands, not side-effect functions |
| Resolve a player from input | `locate(%#, %0, PFym)`, `pmatch(%0)` |
| Store a reference long-term | **objid** (`objid(obj)`) — dbrefs get recycled, names change |

**Never re-evaluate stored player text.** Player input arrives already evaluated once; substitution does not re-scan, so storing and re-emitting it is safe. `u()` on an attribute a player wrote runs whatever is hidden in it with your object's permissions. Read player-authored values with `get()`/`v()`. Don't "sanitize" with `s()` (re-evaluates) or `secure()` (blanks `()[]{}$%,^;`). Corollary: text that must survive a round-trip through evaluation goes through `decompose()`.

## Lookups — reach for these before `iter`/`filter`

| Need | Use |
|---|---|
| Connected players, as a mortal sees them | `mwho()` — correct on a privileged global. `lwho(<viewer>)` renders from `<viewer>`'s view but needs See_All |
| Players in a location | `lvplayers()` — connected, non-dark. `lplayers()` includes disconnected |
| Contents, things, exits | `lcon()`, `lthings()`, `lexits()`; `lv*` forms drop dark objects |
| Where someone is | `loc()` — honours `UNFINDABLE` |
| Objects matching a condition | `lsearch(all, <class>, <restriction>, …)` — attribute-lock `elock` is free, eval classes evaluate per object |

**Privilege is part of the signature.** `lvplayers()`/`lcon()` need presence or control; `lwho(<viewer>)` needs See_All; `loc()` needs examine rights or `@whereis`. These return **empty rather than erroring**, so the code works when staff test it and shows players nothing.

## Pipeline functions

| Function | Shape | Use for |
|---|---|---|
| `chain(<attrs>, <base>[, args…])` | each attr's result → next attr's `%0`; side-args as `%1…`; `ibreak()` short-circuits | multi-step transformation |
| `jiter(<attrs>, <input>[, <osep>])` | every attr gets the SAME `%0`; results joined | record fields from one object |
| `every`/`some(<pred>, <list>[, <delim>[, <reg>]])` | 1/0; register captures the failures / non-matches | validation naming offenders |
| `filterq(<reg>, <pred>, <list>[, …])` | filter() + rejects into the register | A/B split in one pass |
| `json_group_by(<keyattr>, <list>)` | key computed per element; JSON object of arrays, **keys in first-seen order** | bucketing |
| `json_map(<attr>, <json>[, <osep>[, args…]])` | `%0` type, **`%1` raw JSON value** (a string arrives quoted — `json_query(%1,unescape)` for the text), `%2` key or index, args from `%3` | consuming a grouped object |
| `map`/`fold`/`filter`/`filterbool`/`iter` | classic | transform / reduce / select |

`` @assert every(FUN`IS`NUM, %0, , bad)=@pemit %#=Not numbers: %q<bad> `` beats filter+setr gymnastics. (Mid-2026 additions; `help chain()` confirms availability.)

---

# Commands and systems

## The break-early shape

Guard with `@assert`/`@break`, one specific error per check, real work last:

```sharp
@permission/define guild.rank=Staff/Set guild ranks
@role/allow <rank-manager role>=guild.rank
&CMD`SETRANK obj=$+setrank *=*: @assert permission(%#,guild.rank)=@pemit %#=Permission denied.; @assert isdbref(setr(who, locate(%#, %0, PFym)))=@pemit %#=No such player: %0; @assert match(recruit member officer, lcstr(%1))=@pemit %#=Rank must be one of those.; @include me/INC`SETRANK=%q<who>,[lcstr(%1)]
```

- `@assert <bool>=<action>` stops the list unless true; `@break` is the inverse.
- Factor steps into `` INC`<NAME> `` and pull them in with `@include` — runs inline, its `@break` stops the caller; `/nobreak`, `/localize`, `/clearregs` fence that off.
- `` @include/chain me/INC`A me/INC`B=%0 `` — same args to every link, shared registers, first failure short-circuits. Use plain sequential `@include` when links need *different* args.
- **Parameterize a guard by register name** so one include serves twice in a command: `` &INC`IS`VALIDSLOT obj=@assert regmatch(setr(%1,ucstr(trim(%0))),…)=… `` called as `` …=%0,slot `` then `` …=[rest(%0,=)],new ``.
- **Stage registers with `think`, not `@assert`.** `think <text>` is `@pemit/silent me=<text>`, so on a global object it reaches the object and not the player — the command for running `setq()` before the real work. `@assert [setq(…)]=@@` has nothing to assert and stops the list silently if it ever fails.
- **`setq()` takes multiple pairs** — `setq(a,1,b,2)` — but evaluates *every* argument before setting *any* register, so a value that reads an earlier register needs its own `setq()`. Two `think`s, not one.
- **Document in the code, not the file.** A manifest's or script's `#` comments do not survive install; `examine obj/ATTR` shows only the attribute. `@@ <text>;` heads a command list, `[@@(<text>)]` heads a function expression, and both evaluate to nothing. Two traps: a `;` inside an `@@` comment splits the command list and runs the tail as a command, and prefixing `[@@(…)]` turns a bare leading function into a function *after text*, so `add(…)` must become `[add(…)]`. (`@@()` does not evaluate its argument; `null()` does, and exists to swallow output.)
- **Flag each code attribute `cmdsyntax` or `funsyntax`** so `examine` and `@grep/PRINT` lay it out as the dialect it is — `cmdsyntax` for command lists, `funsyntax` for function expressions, `cmdsyntax` winning when both are set. Display only: they never change how an attribute runs. They do **not** propagate down a tree, so they go on every leaf; the `Inheritable` flag they carry is parent-*object* inheritance, a different axis.
- **Match switches loosely, validate inside.** `$+desc/save *` then split on `=` beats `$+desc/save *=*`, which fails to match and gives a bare `Huh?`. Two patterns where one line matches both will both fire.
- Regex commands need the attribute flagged `Regex`; read named captures with `r(<name>, args)`.

## Reachability — a correct command that never fires

- **Location.** Only objects in the enactor's room are checked, plus everything in the **Master Room** (`#2`; `master_room=<dbref>`). Exits are never checked.
- **Scope follows `nearby()`** — same location, *or one inside the other*. An object in a player's inventory is inside them, so its commands match for the carrier alone; an object on the floor matches for everyone in the room. Carried tools therefore need no authorization tier at all.
- **Object flags.** Not `HALTED` (`@halt`/`@restart`), not set `No_command` — the *object* flag, one `/` from the attribute flag: `@set obj/DATA=no_command` scopes a branch, `@set obj=no_command` kills every `$`-command on the object.
- **Locks.** Enactor must not be `GAGGED` and must pass `@lock/use` and `@lock/command`. `$`-commands on yourself need `@lock/use me==me`.
- **Build where you are, publish last.** Name matching reaches only your location and inventory, so `` &FUN`X <object>=… `` stops resolving once the object is in `#2`. Set everything, `@teleport` last — that also gives you a private window to test.
- **Failure message.** A lock failure with no other match gives a bare `Huh?`; set `` COMMAND_LOCK`FAILURE `` (with `OFAILURE`/`AFAILURE`).

## Classify code attributes by role

`` INC`IS`<X> `` assertions · `` INC`CAN`<X> `` authorization · `` INC`DISPLAY`<X> `` output · `` INC`DO`<X> `` shared effects · `` FUN`IS`<X> `` predicates · `` FUN`GET`<X> `` lookups · `` FUN`DISPLAY`<X> `` formatting. A guarded command then reads as a sentence:

```sharp
&CMD`KICK obj=$+group/kick *=*: @include/chain me/INC`IS`GROUP me/INC`CAN`MODERATE me/INC`IS`PLAYER me/INC`IS`MEMBER=%0,%1; @include me/INC`DO`CLEARMEMBER=%q<who>,%q<key>; @include me/INC`DISPLAY`SUCCESS=Removed [name(%q<who>)] from %q<gname>.
```

- **Route every player-facing message through `` INC`DISPLAY`* ``** — guards report failures down the same path as successes, so prefix, colour and tone live in one attribute.
- **Set the class branches** to a one-line description: a branch is not an attribute until set, so an unset one can neither carry a flag nor be enumerated, and `examine` then shows the taxonomy.
- Restrictive flags propagate, so a class locks as a unit: `` @set obj/INC`DO=no_command ``.
- **`@include` reads the object's own attributes freely.** The helpfile's "visible to the enactor" governs including *another* object's attribute; no `visual` needed for your own.

## Staff-level versus player-level systems

The same feature needs a different shape depending on who owns it.

| | Wizard global | Player-owned |
|---|---|---|
| Lives in | `#2`, wizard-flagged | the owner's inventory |
| Storage | on each player | on the object itself |
| Protecting the tree | `@attribute/access <ROOT>=…` — **wizard-only**, one line, covers players who don't exist yet | `@set obj/<ROOT>=no_command` on its own branch; restrictive flags propagate |
| Authorization | required in softcode: `permission(%#, …)`, see below | none — `nearby()` already scopes it |
| Reach | anyone | the owner |

- **A wizard object writing to players must target `%#` and never take a target argument** — the object authorizes nothing on its own, so an accepted target is a way to rewrite someone else's data.
- Player-owned tools work because of **control rule 8**: an object and its owner share an owner, so the object controls the player and can set their `@describe` with no wizard bit. (Rule 8 needs the player not set `TRUST`.)
- Attributes are owned by whoever set them, and **only players can own attributes** (`@atrchown`). A wizard global writing to a player leaves the attribute owned by the global's owner — harmless while unlocked, decisive once `@atrlock` is involved.

## Roles and permissions

Who may do what is the game's job, not a staff list in an attribute. Roles are named sets of permissions held by objects and by accounts (a character also holds its account's); the game, the portal and softcode read one answer. `help roles`, `help @role`, `help @permission`.

| Ask | Function | Lock key |
|---|---|---|
| What someone **is**: approved, on a roster | `hasrole(<obj>, <role>)` | `role^<role>` |
| What someone **may do**: approve, close any scene | `permission(<obj>, <perm>)` | `perm^<perm>` |

- **Gate on permissions, tag with roles.** `@assert permission(%#, chargen.approve)` survives staff moving that job to another role, `@permission/allow` for one person, `@permission/deny` against one, with no code change. `hasrole(%#, wizard)` and `orflags(%#, Wr)` don't. Flags and powers still answer (WIZARD/ROYALTY are the `wizard`/`royalty` roles, each power a `game.` permission), but they name a rank, not a job.
- **A job the game lacks is a custom permission**: `@permission/define chargen.approve=Staff/Approve new characters`, then `@role/allow <role>=chargen.approve`. Nobody holds it but #1 and `administrator` holders until something allows it, wizards included.
- **Status is a role in a category**: `@role/category/create Status=<description>`, `@role/create approved=Status/Approved`. The category must exist first; role and permission categories are separate lists (`Staff` starts in both).
- **Tagging from softcode**: a wizard global runs `@role/assign %q<who>=approved`. It acts as the **executor**, which needs `roles.admin` and must rank above the role and the target, so a wizard target is refused. The command reports to the global; confirm with `@assert hasrole(%q<who>,approved)=@pemit %#=<failure>`. Run the checks on `%#`: `permission(me, …)` asks about the global, a wizard holding nearly every built-in permission and no custom one.
- **Character, not account.** `@role/assign/account` and `@permission/allow/account` reach every character on the account: right for who the person is, wrong for approval or a guild.
- **Find holders with a lock search**: `lsearch(all, type, player, elock, role^approved)`, from a privileged object (a mortal sees only what they can examine). Needs SharpMUSH#1619: before it, `elock` tested the searcher instead of each candidate, so lock searches (attribute keys included) matched everything or nothing.
- **Whole commands**: `@lock/command <obj>=perm^<perm>` gates every `$`-command on the object; built-ins take `@command/restrict <cmd>=PERM^<perm>` and `@function/restrict <fn>=<perm>`.
- **Role priority is not control.** Ranking higher gives no power over anyone; control is ownership, zones, locks, `control.all`/`protect.*`. Priority only orders who may manage roles, so never build an "outranks" check for game actions on it.
- **A Deny role does not cancel another role's Allow.** Take a permission from one person with `@permission/deny`, from a group by removing it from their role.
- **Typos fail closed.** An unknown role makes `hasrole()` `0`; an unknown permission makes `permission()` `#-1 NO SUCH PERMISSION`, which is false. Check names with `valid(permission, <name>)` / `valid(rolename, <name>)`; `@role/player <obj>` shows where each permission came from.

A package declares the roles, permissions and categories it needs in `package.yaml` (format 1.2: `categories:`, `permissions:`, `roles:`) instead of creating them from `AINSTALL`; `help roles packages`. On `/http` routes, `%q<viewer>` is the portal visitor's character (empty when anonymous), so a route asks `permission(%q<viewer>, …)`.


## Message streams: feeds

A system where people send lines to a group and read them back later (a radio, text messages, a staff log) is a **feed kind**, not member lists and history kept in attributes. See `help @feed` and `help feed functions`; the bundled `radio` package (`+radio`) is the worked example.

| The feed owns | The system owns |
|---|---|
| Lines, with every name as it was when sent | Names, categories and descriptions of its streams |
| Limits: `max_messages`, `max_bytes`, `max_length`, `max_age` | Moderator and admin lists, and their locks |
| Members, gag, and each member's read position | Titles, personas, colours, restrictions, announcements |
| Two locks: `read` (who may be joined) and `send` (who may speak) | How a line looks: `` FEED`<KIND>`FORMAT ``, listings, recall layout |
| Delivery, and taps that hear every line | Its commands, and who may run them |

- **A wizard defines the kind once**, owned by the system's object: `@feed/define radio=<object>` (needs `feed.admin`, which the wizard role has). From then on, code that controls the owner runs every feed of the kind. Players never type `@feed`; the system's commands do.
- **Key feeds by a stable id, not the name players see.** Feeds are `<kind>/<key>` and have no rename. Keep `` F`<id>`NAME `` in the system and look ids up, so a rename is one attribute.
- **Send as the player.** `@feed/send radio/<id>=%q<text>` from a `$`-command speaks as `%#` (`:` poses, `;` semiposes). `@feed/send/as radio/<id>=<persona>/<text>` stores the name the line appears under.
- **`@feed`'s own messages go to the executor**, the system object, not the player. Report success yourself, and check state with functions (`feedmember()`, `feedinfo()`), not by reading what `@feed` said.
- **One formatter for live lines and recall.** `` FEED`<KIND>`FORMAT `` gets `%0` message, `%1` recipient, `%2` speaker, `%3` style, `%4` key, `%5` persona, `%6` line id. Recall is `feedrecall(<feed>,<n>)` (line ids), then `feedmsg(<id>,text|name|display|style|speaker)` through the same `u()`.
- **Two locks only.** An evaluation lock sees the feed key in `%0`. Everything else about who may do what (moderators, a restriction until a time) is the system's own attributes and `testlock()`.
- **Taps hear every line**: `` @feed/tap radio=<obj>/TAP`LOG `` gets `%0` line id, `%1` feed, `%2` recipients, `%3` speaker, `%4` style, `%5` message, `%6` persona. Use one to copy lines into scenes or a staff log; don't hook delivery for it.
- **A kind of scene line is a pose type.** Record it with `@scene/addpose <scene>=<author>,<showas>,<origin>,<type>,<source>,<tags>,<text>`, and attach `` TYPE`<KEY> `` (JSON: `label`, `presentation`, `tone`, `icon`, `hidden`, `order`) and `` TYPE`<KEY>`FORMAT `` (`%0` pose id, `%1` reader, `%2` line; empty hides it from that reader) to `{{scene/logger}}`, as `radio-scene` does for `radio`. `@scene/types` shows what the plugin made of them.
- **Watch the size.** `@feed/list` shows lines and stored bytes per kind; `feedinfo(<kind>,stored)` and `feedinfo(<kind>/<key>,stored)` give them to code. Set `max_messages` or `max_age` on the kind so a busy stream cannot grow without end.

---

# Data

## One datum per leaf

Never pack fields into one delimited value. One branch per record, one leaf per fact:

```sharp
&DATA obj=Guild records, one branch per guild.
@set obj/DATA=no_command
&DATA`1`NAME obj=Ivory Syndicate
&DATA`1`DUES obj=150
&FUN`GET`MEMBERS obj=lsearch(all, type, player, elock, DATA`GUILD:%0)
```

**Association lives on the member**, not as a list on the record: each player carries `` DATA`GUILD ``, and the search finds them. A destroyed player leaves the search on its own — cleanup for free, no stale entry. Avoid maintaining lists of dbrefs where a search over data on the objects will do. The cost is deletion: removing a record means sweeping members with a queued `@dolist`.

**Key once.** Grouping by kind at the root is namespacing — that is what `` CMD` ``/`` FUN` ``/`` DATA` `` are. What goes wrong is keying two *different* roots by the same value: `` TITLE`<key> `` beside `` MOD`<key> `` leaves the relationship with no node of its own and lets the halves drift. Give it a node: `` GROUP`<key> `` with `` GROUP`<key>`TITLE `` and `` GROUP`<key>`MOD `` beneath, so everything about one membership is in one place and one `lattr` finds it. **The tree does not cascade a delete**: clearing `` GROUP`<key> `` leaves `` GROUP`<key>`MOD `` sitting there. Only `@wipe` removes a subtree, and it refuses wizard-changeable attributes for anyone but God — which is exactly what flagging the root `wizard` makes them. So clear every leaf explicitly when a relationship ends, and keep the membership check where the role grants authority; containment makes the cleanup findable, not automatic.

**Enumerating.** `lattr()` lists only attributes that exist, and a branch is not one unless set. `` lattr(obj/DATA`*) `` is empty; match a leaf (`` DATA`*`NAME ``), use `**` for every depth, or give the branch a real datum (a join date, the worn slot) so `` lattr(obj/ROOT`*) `` enumerates directly.

## Flags and ownership

Data kept on a player is data the player can rewrite — they control themselves — so flag the root: `@attribute/access <ROOT>=wizard no_command` (persists, wizard-only to set). Propagation is not uniform:

- `no_inherit`, `no_command`, `mortal_dark` propagate — flag the branch, every leaf inherits.
- `wizard` propagates for **writes only** and gates no reads at any level. One `wizard` root blocks mortal writes to every leaf beneath, including leaves added later, while leaving the data readable — usually exactly right for a roster.
- `no_clone` and `veiled` do not propagate. Granting flags like `visual` do not propagate either, and must be set on branch *and* leaf.
- `@wipe` refuses wizard-changeable attributes for anyone but God, so a wizard object cannot drop a protected tree in one call — clear the known leaves.

---

# Composing: transform once, then consume

Shape the data in one pass and let each stage consume the last, rather than re-asking the game for what you already hold.

- **Use everything a stage hands you.** `json_map()` gives value in `%1` and key in `%2`; taking `%2` and fetching the value back with `json_query(…, get, %2)` re-walks the structure per key for data already in hand.
- **Flatten once the structure has done its job.** A delimited record list — `` <key>:<v1> <v2>|<key>:… `` — is read directly by `first(%0,:)`, `rest(%0,:)`, `iter`, `words`, `filterq`, where JSON costs a call per access. Pick separators the data cannot contain: dbrefs are safe with `:` and `|`, **objids are not**.
- **Another syntax's escaping is not softcode's.** Markdown writes a literal pipe as `\|`, but `iter(<list>,|)` still splits at it — the splitter knows nothing about the escape, so "the source cannot contain a bare delimiter" is not a safety argument. When a payload can contain your delimiter, carry it as JSON and let `json_query()`/`json_map()` unescape.
- **Order the input, not the output** — `json_group_by()` preserves first-seen order.
- **Split with `filterq()`**: matches returned, rest into a register, one pass for both halves.
- **Pass computed values down.** A section that knows it is the IC section hands the row its label and colour instead of re-deriving per row.
- **One attribute can be both test and data**: `` &FUN`ONLINE obj=mwho() `` guards with `` @assert u(me/FUN`ONLINE) ``, supplies the list, counts with `words()`.
- `sortby()` calls its ufun O(n log n) times; a built-in `sort()` type (`namei`, `conn`, `idle`, `loc`, `attr:<name>`) sorts in hardcode. And add no ordering that was not asked for.

# Formatting output

**Draw screens with the layout functions.** `help layout functions`. Describe the shape once; a telnet client gets box art at its own width, a client without UTF-8 gets ASCII, the web portal gets a card, a table and a definition list, a screen reader the content alone. Hand-padded `align()`/`center()`/`header()` output is one fixed text for all of them.

| Want | Use |
|---|---|
| Titled frame | `box(<body>, <title>)` |
| Divider / footer | `rule(<title>)` on its own line inside the box; footer = `[rule()]%r<text>` |
| `Label: value` sheet | `fields(, <label>, <value>, …)`; `{{"cols":2}}` for two columns |
| Table, rows written out | `datatable(<opts>, <h1>\|<h2>, <c1>\|<c2>, …)` |
| Table from computed lists | `datacolumns(<opts>, <heading>\|<cells…>, …)`, one `iter()` per column |
| Names in columns / a list / a tree | `grid()` / `bullets()` / `tree()` + `node()` |
| Side by side | `flex(<opts>, item(<content>, <width>), …)` |
| Bar / status tag | `gauge(<v>, <max>, <label>)` / `badge(<text>, ok\|warn\|error\|info\|muted)` |

- **Leave the width empty.** Empty means the width of the connection that ran the command, and each telnet reader is re-sent it at their own; that is what makes `@remit` right for a whole room. `width(%#)` pins every reader to the enactor's width; a number pins everyone. No column arithmetic (`sub(width(%#),37)`): table columns size from their content.
- **Options are one JSON object**: inline with doubled braces, `box(x,T,,{{"title":"left"}})`, or `json(object,…)` when a value is computed. A misspelled key errors (`#-1 UNKNOWN LAYOUT OPTION`). An inline `\n` is eaten by evaluation and silently becomes `n`; build a newline with `json(string,%r)`.
- **Nesting is by line.** A `fields()`/`datatable()`/`flex()`/`tree()` on a line of its own inside `box()` keeps its layout; a `rule()` on its own line becomes a divider meeting the box's sides. After other text on the same line, a block layout falls apart. Inline pieces (`badge()`, `cmdlink()`) are fine anywhere.
- **Tables: say what to keep.** Too wide, wrapping columns shrink first, then the highest `"priority"` number is dropped. A wrapping column with no `"min"` shrinks to a letter per line before anything drops. Mark names, numbers, times and statuses `"nowrap"` (shown whole or not at all), leave free text wrapping with a `"min"`, give droppable columns priority 2+. `<` `-` `>` before a heading aligns its column. Give the free-text column a `"grow"` share (`"grow":"|1"`) to span the screen; without one a table is as wide as its cells.
- **Player text in a table needs another delimiter.** Cells split at `|`, and a title can hold one. Join those columns with `%r` and pass `json(object,delim,json(string,%r))`. The option lists split on the delimiter too: `nowrap,json(string,1%r3)`; `"1|3"` is then one bad item (`#-1 ARGUMENT OUT OF RANGE`).
- **In `package.yaml`, `{{` is an object reference**, so `{{"title":"left"}}` fails the install. Build options there with `json(object,…)`.
- **A `{{ref}}` is looked up on the object running the code** (it installs as `[v(PM`REFS`…)]`). Code another package `@include`s or `u()`s runs as that package's object, which holds none of your refs: name the caller `%!` and pass your own object in a register. Read another package's attached ref with `u()`, not `get()`.
- **An empty table still draws its headings** — `if(words(%q<l>),<table>,No scenes.)`.
- **Build the layout last.** `left()`, `edit()` or other text surgery on a layout leaves plain text: no per-reader width, no portal structure. Colour goes in the cells, a border piece (`"top":"[ansi(hb,=)]"`) or `gradient()`.
- **Colour a meaning with `tone(<colour>,<text>)`, not `ansi()`**: an OOC aside, a radio call, a warning. The colour is a theme colour's name (`foreground`, `primary`, `secondary`, `tertiary`, `muted`, `success`, `warning`, `error`, `info`) and is painted from each reader's own `@theme` when the line is sent, and from their portal theme in the portal. Keep `ansi()` for colour that is the point, such as a name colour a player chose.
- **Don't pick the game's border.** `layout_border` is the default style; pass `"border"` only where a box should differ from the rest.
- `rendermarkdown(<md>[, <width>])` renders CommonMark to ANSI; a width outside 10–1000 is an error, not clamped, so guard a computed width with `max(10,…)`. Inside a box, render at `max(10,sub(width(%#,78),4))` (two borders, two pads). `rendermarkdowncustom(<md>, <obj>[, <width>])` adds `` RENDERMARKUP`<ELEMENT> `` templates held on `<obj>`.
- `align(<widths>, <col>…)` remains for fixed-width text that must stay text (a log line, a channel message): ANSI belongs in the spec (`28X(hc)`), not round the content.

---

# Platform

## Pre-populated world (already created and configured)

`#0` Room Zero, `#1` God, `#2` Master Room, `#3`–`#6` Ancestors (attribute-only fallback parents; no $-commands; `ORPHAN` opts out), `#7` Package Manager, **`#8` HTTP Handler**, **`#9` Event Handler**. Both handlers are already wizard-flagged and already pointed at by `http_handler`/`event_handler`. Adding your attribute to `#8`/`#9` is the whole setup.

### Events — add an attribute to #9

```sharp
&PLAYER`CONNECT #9=@cemit Admin=[name(%0)] connected (connection %1).
```

- Names are `` <type>`<event> `` (dump, db, log, object, player, socket, http, signal, sql). Args are per-event — `help event <type>`. `` player`connect `` = (objid, count, descriptor); `` player`create `` = (objid, name, how, descriptor, email).
- The handler runs with **its own** permissions; a custom handler object needs its own wizard flag.
- `%#` is the causer; for system events it is `#1` (God), **never `#-1`**. Distinguish system from player by the event's args, not by `%#`.

### HTTP — add a sub-handler attribute to #8

Verb routers (`&GET`, `&POST`, …) are pre-installed. URLs live under `/http/` on the game's **web server** (the host/port serving the portal — deployment-specific, never the telnet port). `/http/guildroster` maps to `` GET`GUILDROSTER `` (slashes→backticks), 404 if absent. Don't edit the routers; add routes:

```sharp
&GET`GUILDROSTER #8=@respond/type application/json; think json_array(iter(lattr(#300/DATA`*`NAME), json(string, get(#300/%i0))))
```

- `%0` = raw request body; query params pre-decoded as `%q<form.name>`; headers as `%q<hdr.host>`.
- Everything `think`/`@pemit`-ed during the run **is** the response body; queued work never reaches the client — write inline.
- `@respond <code> <text>`, `@respond/type`, `@respond/header <name>=<value>`.
- Build JSON with `json()`, `json_array()`, `json_group_by()`, `json_query()` — never hand-concatenate brackets.
- `` http` `` events on `#9` *observe* traffic; sub-handlers on `#8` *answer* it.

## Persistence

| Setup | Survives reboot? |
|---|---|
| Attribute flags, `@attribute/access`, `@flag/add`, `@power/add` | Yes |
| `@function` globals, `@hook` | **No — re-register from `@startup`**: ``@startup #1=@dolist lattr(#100/GLOBAL_FUNS`*)=@function [last(%i0,`)]=#100/%i0`` (the branch scopes what is exported; `last()` names the function, so `` GLOBAL_FUNS`ROSTER `` becomes `roster()`) |
| `@config/set` | Session-only — `@config/save` |

## Long-running work

Prefer queued `@dolist` (with `/notify` + semaphore `@wait`) over `/inline` for anything long — yielding keeps the game responsive. `/inline` suits small fast loops; an `@break` inside stops it.

---

# Common mistakes

| Mistake | Fix |
|---|---|
| `@create Event Handler` + `@config/set event_handler=…` | `#9` exists and is configured — just `` &EVENT`NAME #9=… `` |
| `$GET /path:` for HTTP, `@pemit %#=` as body, telnet-port URL | `` GET`PATH `` on `#8`; `think` = body; URL under `/http/` |
| `CMD.NAME`, `GUILD.56` dot-namespaces | Backtick trees: `` CMD`NAME ``, `` DATA`<guild>`NAME `` |
| `name\|date\|dues` packed values | One leaf per datum |
| Nested `@switch` validation ladder | `@assert` chain, one error per guard |
| `@assert` used as if-then | It stops the list; compute the value with `if()` instead |
| Storing a dbref or player name as a reference | If you must store one at all, store the **objid** |
| Using an objid as an attribute-tree key | `:` is illegal in attribute names — key by something else, keep objids in values |
| `@assert %#` to detect system events | `%#` is `#1` there; gate on event args |
| `ibreak()add(…)` trailing function unevaluated | `ibreak()[add(…)]` |
| `[[]x[]]` to print `[x]`; a bare `(` inside `header()`/`align()` | `%[x%]`; `%(` `%)`. Empty `[]` is a parse error, and a bare paren closes the call |
| `and(…)`/`or(…)` as the default boolean | `cand()`/`cor()` stop at the first deciding argument; `and()`/`or()` evaluate everything |
| `if(t(<x>),…)`, `@assert t(<x>)` | Both already test truthiness |
| `##`/`#@` in `@dolist`/`iter` | Spliced textually *before* evaluation, so elements run as code and nesting resolves to the outermost loop. Use `%i0`/`inum(0)`. `##` is still correct in `lsearch` eval classes — no iteration context there |
| `$`-command correct but never fires | Room or Master Room, not `HALTED`/`No_command`, passes `@lock/use` + `@lock/command` |
| `@set obj=no_command` to protect a data attribute | Object flag — kills every `$`-command. Attribute flag needs the slash |
| `` lattr(obj/DATA`*) `` to enumerate records | Branches aren't attributes — match a leaf, use `**`, or give the branch a datum |
| `@set obj/ATTR=<code>` to store code | `@set` evaluates first; `&ATTR obj=<code>` stores verbatim from a client |
| `@teleport obj=#2` before setting its attributes | Name matching reaches only your location and inventory — publish last |
| `json_query(<grouped>, get, %2)` inside `json_map` | `json_map` already handed you the value as `%1` |
| `ansi()` around an `align()` column's content | Put it in the column spec: `28X(hc)` |
| `header()` + `align()` rows + `footer()` with `sub(width(%#),N)` column maths | `box()` round a `datatable()`/`datacolumns()`; no width given |
| `[ansi(h,rjust(%0:,14))] %1` label gutters | `fields(, <label>, <value>, …)` |
| `width(%#)` passed to a layout function | Leave it empty; each reader gets their own width |
| `{{"delim":"\n"}}` inline | `json(object,delim,json(string,%r))` |
| Carrying JSON through a render and querying per row | Flatten to a record list once, then `first()`/`rest()` |
| Parallel trees keyed the same (`` TITLE`<k> `` + `` MOD`<k> ``) | One tree — containment makes the invariant structural |
| Game data on a player left unflagged | They control themselves and can set it; flag the root |
| `@wipe` on a protected tree from a wizard object | God-only for wizard-changeable attributes — clear the leaves |
| A wizard global that accepts a target argument | Target `%#`; it authorizes nothing on its own |
| `orflags(%#,Wr)`, `hasrole(%#,wizard)` or a `&STAFF` dbref list as the gate | `permission(%#, <perm>)`; define a custom one for the job |
| `permission(me, …)` on a wizard global | Check `%#`; `me` is the global, not the player |
| A Deny role to take a permission from one player | Any other role's Allow wins; `@permission/deny <player>=<perm>` |
| Role priority as an "outranks" check | Priority only orders role management; control is ownership, zones, locks |
| Making a player-owned tool wizard "so it can work" | Control rule 8 — an object controls its owner already |
| Evaluating stored player text to interpret `%r` | Store literal; formatting comes from the player's own `@desc`. `decompose()` to round-trip |
| Flagging the event handler wizard "so it can act" | Seeded `#9` already is; only custom handlers need it |
| `setq(ls,…)`, `setq(args,…)` as your own registers | Every command sets `%q<args>`, `%q<ls>` and `%q<lsac>` for its own run, and `%q<rs>`, `%q<equals>`, `%q<switches>`, `%q<lsa1>`… when it has them, so a command between your `setq()` and its use overwrites yours. Pick other names; see "Registers and their scope" |
| A `;` in message text inside a command list (`@pemit %#=Use 30m; or 2h`) | A bare `;` ends the command and runs the rest as another (`Huh?`); inside `[…]` it makes the whole list do nothing, silently. Write `%;` |
| Member lists and history in attributes for a radio or text system | A feed kind: `help @feed` |
