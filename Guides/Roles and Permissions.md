# Roles and Permissions in Softcode

SharpMUSH keeps track of who may do what through roles and permissions, the same way a Discord server does. The game, the web portal and softcode all read the same answer. Softcode that asks the game instead of keeping its own list of staff stays correct when staff change, and admins can manage it from `@role` or the portal's Roles page without editing code.

See `help roles`, `help @role` and `help @permission` on the game for the full rules.

## The pieces

- A **permission** names one thing someone may do: `wiki.edit`, `players.moderate`, `game.see_all`. A game can define its own with `@permission/define`, such as `scene.close` or `chargen.approve`.
- A **role** is a named set of permissions. Each role allows, denies or leaves alone each permission. `wizard`, `royalty`, `builder`, `helper`, `moderator`, `player` and `guest` exist in a new game; you can add your own.
- **Objects and accounts both hold roles.** A character holds the roles assigned to it plus the roles of the account it is linked to. Every object holds `everyone`, and every non-guest player holds `player`.
- An **override** sets one permission on one object or account, and beats every role it holds.
- Every role and every custom permission sits in a **category**. Role categories and permission categories are separate lists, and a category must exist before anything goes in it.

The WIZARD and ROYALTY flags are the `wizard` and `royalty` roles, and each PennMUSH power is a `game.` permission (See_All is `game.see_all`). `hasflag()`, `orflags()`, `haspower()`, `FLAG^` and `POWER^` still work and answer from roles.

## Asking from softcode

| Question | Function | Lock key |
|---|---|---|
| Does this object hold a role? | `hasrole(<object>, <role>)` | `role^<role>` |
| May this object do something? | `permission(<object>, <permission>)` | `perm^<permission>` |
| Which roles does it hold? | `roles(<object>)` | |

```sharp
think hasrole(*Ariel, moderator)
think permission(%#, players.moderate)
think roles(*Ariel)
```

`roles()` lists the object's own roles and its account's, highest priority first, with `everyone` last.

`examine` shows an object's `Roles:` and `Overrides:` lines. `@role/player <object>` shows where each role came from (the object or its account) and which permissions it ends up holding, which is the first thing to read when a check answers something unexpected.

## Two kinds of question

Ask a **role** when the question is what someone *is*: approved, on the Ironguard roster, a storyteller. Ask a **permission** when the question is what someone *may do*: approve characters, close any scene, edit the news.

Authorization belongs on permissions. A check written as `permission(%#, chargen.approve)` keeps working when staff hand that job to a new role, give it to one person with `@permission/allow`, or take it from one person with `@permission/deny`, and none of that needs a code change. A check written as `hasrole(%#, wizard)` or `orflags(%#, Wr)` has to be edited every time.

## Example: tagging approved characters

Character approval is a status, so it is a role. Approving is a job, so it is a permission.

Set up once, as a wizard:

```sharp
@role/category/create Status=Where a character stands in the game
@role/create approved=Status/Approved
@permission/define chargen.approve=Staff/Approve new characters
@role/create approver=Staff/Approver
@role/allow approver=chargen.approve
@role/assign Ariel=approver
```

`Staff` exists in a new game in both category lists. `Status` is new, so it is created first; `@role/create` refuses a category that does not exist.

The approval command lives on a wizard global in the Master Room. It checks the permission on the person typing, `%#`, and assigns the role as the global:

```sharp
@create Approval Global
@set Approval Global=!no_command
@set Approval Global=WIZARD
&CMD`APPROVE Approval Global=$+approve *:@assert permission(%#,chargen.approve)=@pemit %#=Permission denied.;@assert isdbref(setr(who,pmatch(%0)))=@pemit %#=No such player: %0;@break hasrole(%q<who>,approved)=@pemit %#=[name(%q<who>)] is already approved.;@role/assign %q<who>=approved;@assert hasrole(%q<who>,approved)=@pemit %#=Could not approve [name(%q<who>)].;@pemit %#=[name(%q<who>)] is approved.
@tel Approval Global=#2
```

Why it is built this way:

- `@role/assign` acts as the **executor**, the global. The global needs `roles.admin` and must rank above both the role and the target, which the `wizard` role gives it. Ariel needs neither, only `chargen.approve`.
- The command checks `%#`, never `me` or `%!`. Checking `me` asks about the global, which as a wizard holds nearly every built-in permission and no custom one until a role allows it.
- `@role/assign` reports to the global, not to the player. The `@assert hasrole(...)` after it is how the player learns the assignment was refused, for example because the target is a wizard and does not rank below the global.
- The role goes on the **character**. `@role/assign/account` would approve every character on that account.

Reading the tag back:

```sharp
think hasrole(*Bob, approved)
@lock IC Entrance=role^approved
think lsearch(all, type, player, elock, role^approved)
```

`lsearch()` with a `role^` lock lists every approved character with no per-object softcode. For a mortal, `lsearch()` includes only objects they can examine, so run it from the global or another privileged object. This needs [SharpMUSH#1619](https://github.com/SharpMUSH/SharpMUSH/pull/1619); before it, `elock` tested the searcher instead of each candidate and the search returns everything or nothing.

To revoke, `@role/unassign <player>=approved`, or give the global a matching `+unapprove`.

## Gating with locks and restrictions

A lock can test a role or a permission directly, so an object or command needs no softcode check at all:

```sharp
@lock/use Staff Board=role^moderator|perm^players.moderate
@lock/command Approval Global=perm^chargen.approve
```

`@lock/command` gates every `$`-command on the object, and a player who fails it gets `Huh?` unless `COMMAND_LOCK`FAILURE` is set. Use it when the whole object is staff-only; keep the `@assert permission(...)` form when one command on a shared global needs a different permission from the rest.

Built-in commands and functions can be restricted to a permission without softcode:

```sharp
@command/restrict @wall=PERM^chat.admin
@function/restrict lwho=players.view
```

## Pitfalls

- **Role priority is not control.** Ranking above someone gives your code no power over them. Control still comes from ownership, zones, locks and the `control.all` and `protect.*` permissions. Priority decides only who may manage which roles. Do not build "outranks" checks for game actions on it.
- **A Deny does not beat an Allow.** If any role someone holds allows a permission, they have it, even if another of their roles denies it. To take a permission from one person, use an override: `@permission/deny Twink=chargen.approve`. To take it from a group, remove it from the role.
- **Misspellings fail closed, quietly or not.** `hasrole()` with an unknown role returns `0`. `permission()` with an unknown permission returns `#-1 NO SUCH PERMISSION`, which is false, so the check denies. Test new checks with `think` before relying on them, and check a name with `valid(permission, <name>)` or `valid(rolename, <name>)`.
- **A new custom permission is held by nobody** but #1 and holders of `administrator` until a role or override allows it. Wizards do not hold it automatically.
- **Account or character.** `/account` on `@role/assign` and `@permission/allow` reaches every character on the account. Use it for things about the person (portal staff, a banned writer), not the character (approval, a guild).

## From packages and HTTP routes

- A package declares the roles, permissions and categories it needs in `package.yaml` (format 1.2: `categories:`, `permissions:`, `roles:`) instead of creating them from install softcode. Install creates what the game lacks, and uninstall removes what nothing else relies on. See `help roles packages`.
- On `/http` routes, `%q<viewer>` is the objid of the character the web session belongs to, or empty for an anonymous request, so a route can run `permission(%q<viewer>, ...)`. See `help http`.
