---
name: writing-sharpmush-softcode
description: Use when writing, reviewing, or debugging SharpMUSH softcode — $-commands, +commands, MUSH functions, attribute code, event handlers, or HTTP endpoints on a SharpMUSH game. Covers SharpMUSH's own idioms — pre-seeded #8/#9 handlers, routed HTTP, pipeline functions, backtick attribute trees — and how to look the rest up in its helpfiles.
---

# Writing SharpMUSH Softcode

SharpMUSH is a functional MUSH server with its own idioms: handlers come pre-populated, HTTP is routed, and pipeline functions cover what used to take contortions.

**Work from the docs.** Category index (`help function types`, or the top of `sharpfunc.md`) → `help <topic>` → write. `@list/functions` lists every function on the game; `@function` the game's own globals. Helpfiles: `SharpMUSH.Documentation/Helpfiles/SharpMUSH/*.md`, also published as `SharpMUSH.Guide` on Context7. Open the index whenever the question is "who or what is in X" — one function usually answers it, and reaching for `iter`/`filter` first is how you miss it.

---

# Language

## Evaluation

- **A function after literal text needs `[brackets]`**: `think Kept: [filter(...)]`. A bare leading function evaluates alone: `&F obj=add(%0,1)` works, `&F obj=ibreak()add(%0,1)` does not — write `ibreak()[add(%0,1)]`.
- **Never bracket a bare %-substitution.** `%0`, `%q<name>`, `%#` as-is; `[%0]` does nothing.
- **Player-typed input is single-command mode**: a typed `;` is literal. Command lists exist only inside stored attributes and command arguments. Brace `{}` a segment whose own `;` must not split the list.
- **`&` vs `@set` on the value.** `@set obj/ATTR=<v>` always evaluates `<v>`. `&ATTR obj=<v>` stores verbatim when typed at a client — which is why `&` stores code — but evaluates when run from inside an attribute. Brace `{}` what must survive.
- **Executor identity depends on how you were called.** A hardcode-invoked template — a `` RENDERMARKUP`<ELEMENT> `` for `rendermarkdowncustom()` — is evaluated with the **caller** as executor, so `me`/`%!` is not the object holding it and `` me/FUN`X `` silently resolves against the wrong object. Address its helpers by explicit dbref. A global `@function` is the opposite: it runs as its backing object. Check which you have before writing `me/`.
- **Clearing: omit the `=`.** `&ATTR obj` always clears. `&ATTR obj=` clears only when `empty_attrs` is off; otherwise it stores empty. Cleanup written with `=` works on one game and silently leaves data on another.
- **Truthiness.** `if()`, `@assert`, `@break`, `filterbool()` already test it, so `t()` inside them is always redundant: `if(t(%1),…)` is `if(%1,…)`. Empty and `0` are falsy, everything else truthy — including `{}`, so an empty JSON object is *true*; test the list you built it from. `filter()`/`filterq()` are the exception, keeping only exactly `1`.
- **`@assert` is not if-then** — it *stops the list*. For a conditional effect, compute the value instead: `&WORN obj=[if(strmatch(%q<w>,%q<old>),%q<new>,%q<w>)]`.

## Substitutions

`%0`–`%9` args · `%#` enactor dbref · `%:` enactor objid · `%!` executor · `%L` enactor's location · `%q<name>` named register (`setq`/`setr`; case-insensitive) · `%i0`/`itext(0)` current iteration element · `%b` space · `%r` newline.

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

```
&CMD`SETRANK obj=$+setrank *=*: @assert orflags(%#,Wr)=@pemit %#=Permission denied.; @assert isdbref(setr(who, locate(%#, %0, PFym)))=@pemit %#=No such player: %0; @assert match(recruit member officer, lcstr(%1))=@pemit %#=Rank must be one of those.; @include me/INC`SETRANK=%q<who>,[lcstr(%1)]
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
- **Build where you are, publish last.** Name matching reaches only your location and inventory, so `&FUN`X <object>=…` stops resolving once the object is in `#2`. Set everything, `@teleport` last — that also gives you a private window to test.
- **Failure message.** A lock failure with no other match gives a bare `Huh?`; set `` COMMAND_LOCK`FAILURE `` (with `OFAILURE`/`AFAILURE`).

## Classify code attributes by role

`` INC`IS`<X> `` assertions · `` INC`CAN`<X> `` authorization · `` INC`DISPLAY`<X> `` output · `` INC`DO`<X> `` shared effects · `` FUN`IS`<X> `` predicates · `` FUN`GET`<X> `` lookups · `` FUN`DISPLAY`<X> `` formatting. A guarded command then reads as a sentence:

```
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
| Authorization | required in softcode | none — `nearby()` already scopes it |
| Reach | anyone | the owner |

- **A wizard object writing to players must target `%#` and never take a target argument** — the object authorizes nothing on its own, so an accepted target is a way to rewrite someone else's data.
- Player-owned tools work because of **control rule 8**: an object and its owner share an owner, so the object controls the player and can set their `@describe` with no wizard bit. (Rule 8 needs the player not set `TRUST`.)
- Attributes are owned by whoever set them, and **only players can own attributes** (`@atrchown`). A wizard global writing to a player leaves the attribute owned by the global's owner — harmless while unlocked, decisive once `@atrlock` is involved.

---

# Data

## One datum per leaf

Never pack fields into one delimited value. One branch per record, one leaf per fact:

```
&DATA obj=Guild records, one branch per guild.
@set obj/DATA=no_command
&DATA`1`NAME obj=Ivory Syndicate
&DATA`1`DUES obj=150
&FUN`GET`MEMBERS obj=lsearch(all, type, player, elock, DATA`GUILD:%0)
```

**Association lives on the member**, not as a list on the record: each player carries `` DATA`GUILD ``, and the search finds them. A destroyed player leaves the search on its own — cleanup for free, no stale entry. Avoid maintaining lists of dbrefs where a search over data on the objects will do. The cost is deletion: removing a record means sweeping members with a queued `@dolist`.

**Key once.** Grouping by kind at the root is namespacing — that is what `` CMD` ``/`` FUN` ``/`` DATA` `` are. What goes wrong is keying two *different* roots by the same value: `` TITLE`<key> `` beside `` MOD`<key> `` leaves the relationship with no node of its own and lets the halves drift. Give it a node: `` GROUP`<key> `` with `` GROUP`<key>`TITLE `` and `` GROUP`<key>`MOD `` beneath. The invariant then holds structurally — a fact under a membership cannot outlive it, so "a moderator must be a member" needs no re-check.

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

- `align(<widths>, <col>…)` — each width is `[justification]Width[options][(ansi)]`. Justify `<` `-` `>` `_` `=`; `X` truncates instead of wrapping, `$` suppresses fill, `` ` ``/`'` merge into a neighbour. **ANSI belongs in the spec** (`28X(hc)`), not wrapped around the content, so codes aren't inside the text `align` must measure. The spec is evaluated, so a colour can be an argument: `5(%2)`.
- `rendermarkdown(<md>[, <width>])` renders CommonMark to ANSI; width is clamped 10–1000 and a smaller value errors, so guard a computed per-column width with `max(10,…)`. `rendermarkdowncustom(<md>, <obj>[, <width>])` adds `` RENDERMARKUP`<ELEMENT> `` templates held on `<obj>`.
- `width(%#)` is the enactor's screen width — size from it, don't assume 78.
- `center()`, `ljust()`, `rjust()` take a fill character (banners, rules); `table()` for a uniform grid.

---

# Platform

## Pre-populated world (already created and configured)

`#0` Room Zero, `#1` God, `#2` Master Room, `#3`–`#6` Ancestors (attribute-only fallback parents; no $-commands; `ORPHAN` opts out), `#7` Package Manager, **`#8` HTTP Handler**, **`#9` Event Handler**. Both handlers are already wizard-flagged and already pointed at by `http_handler`/`event_handler`. Adding your attribute to `#8`/`#9` is the whole setup.

### Events — add an attribute to #9

```
&PLAYER`CONNECT #9=@cemit Admin=[name(%0)] connected (connection %1).
```

- Names are `` <type>`<event> `` (dump, db, log, object, player, socket, http, signal, sql). Args are per-event — `help event <type>`. `` player`connect `` = (objid, count, descriptor); `` player`create `` = (objid, name, how, descriptor, email).
- The handler runs with **its own** permissions; a custom handler object needs its own wizard flag.
- `%#` is the causer; for system events it is `#1` (God), **never `#-1`**. Distinguish system from player by the event's args, not by `%#`.

### HTTP — add a sub-handler attribute to #8

Verb routers (`&GET`, `&POST`, …) are pre-installed. URLs live under `/http/` on the game's **web server** (the host/port serving the portal — deployment-specific, never the telnet port). `/http/guildroster` maps to `` GET`GUILDROSTER `` (slashes→backticks), 404 if absent. Don't edit the routers; add routes:

```
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
| `if(t(<x>),…)`, `@assert t(<x>)` | Both already test truthiness |
| `##`/`#@` in `@dolist`/`iter` | Spliced textually *before* evaluation, so elements run as code and nesting resolves to the outermost loop. Use `%i0`/`inum(0)`. `##` is still correct in `lsearch` eval classes — no iteration context there |
| `$`-command correct but never fires | Room or Master Room, not `HALTED`/`No_command`, passes `@lock/use` + `@lock/command` |
| `@set obj=no_command` to protect a data attribute | Object flag — kills every `$`-command. Attribute flag needs the slash |
| `` lattr(obj/DATA`*) `` to enumerate records | Branches aren't attributes — match a leaf, use `**`, or give the branch a datum |
| `@set obj/ATTR=<code>` to store code | `@set` evaluates first; `&ATTR obj=<code>` stores verbatim from a client |
| `@teleport obj=#2` before setting its attributes | Name matching reaches only your location and inventory — publish last |
| `json_query(<grouped>, get, %2)` inside `json_map` | `json_map` already handed you the value as `%1` |
| `ansi()` around an `align()` column's content | Put it in the column spec: `28X(hc)` |
| Carrying JSON through a render and querying per row | Flatten to a record list once, then `first()`/`rest()` |
| Parallel trees keyed the same (`` TITLE`<k> `` + `` MOD`<k> ``) | One tree — containment makes the invariant structural |
| Game data on a player left unflagged | They control themselves and can set it; flag the root |
| `@wipe` on a protected tree from a wizard object | God-only for wizard-changeable attributes — clear the leaves |
| A wizard global that accepts a target argument | Target `%#`; it authorizes nothing on its own |
| Making a player-owned tool wizard "so it can work" | Control rule 8 — an object controls its owner already |
| Evaluating stored player text to interpret `%r` | Store literal; formatting comes from the player's own `@desc`. `decompose()` to round-trip |
| Flagging the event handler wizard "so it can act" | Seeded `#9` already is; only custom handlers need it |
