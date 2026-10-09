# Feeds: Radio, Texting and Logs in Softcode

A **feed** is a stream of messages that a group of people reads: a radio frequency, a text conversation, a staff log. SharpMUSH keeps the messages, who is listening and how much history to keep. Your softcode decides what the system is called, who may run it, and how a message looks.

A system built on feeds needs no member lists in attributes, no history attributes that grow until someone trims them, and no code of its own to tell a scene recorder what was said.

See `help @feed` and `help feed functions` on the game for every switch and function. The bundled `radio` package (`+radio`) is a complete system built this way, and it is shown at the end of this guide.

## What the feed keeps, and what your code keeps

| The feed keeps | Your code keeps |
|---|---|
| Every line, with the speaker's and location's names as they were when it was sent | The names, categories and descriptions players see |
| How many lines to keep, how old, how long a message may be | Who moderates, who runs it, and the lists of them |
| Who is a member, who is gagged, and how far each has read | Titles, callsigns, colours, restrictions |
| Two locks: `read` (who may be joined) and `send` (who may speak) | How a line looks, and every listing |
| Delivering each line, and handing it to taps | The commands players type |

Because each line keeps its names, recall still reads correctly after a speaker is renamed or destroyed.

## Feeds and kinds

Feeds are grouped into **kinds**. `radio` is a kind; each frequency is one feed of it, named `<kind>/<key>`, such as `radio/7`. A feed starts when it gets its first member or line.

A wizard defines a kind once, owned by your system's object:

```sharp
@feed/define walkie=Walkie
```

That needs the `feed.admin` permission, which the wizard role has. After that, any code that controls the owner object runs every feed of the kind. Players never type `@feed`; your commands do.

If the owner object is destroyed, the kind goes to the player who owned it, who could already run it. If that player is destroyed, their kinds go to the probate judge (`@config probate_judge`), the same as their channels. The feeds and their lines stay. A destroyed object also leaves every feed it was on, and its taps are removed. Its tie-in attributes were on the destroyed object, so until you `@feed/define` the kind on a new object, its lines go out in the default format.

Use a stable key, such as a number, rather than the name players see. Keep the name in your own attribute, and renaming the frequency or conversation only changes that.

## When a key changes

A feed's lines and members are stored under its key. If your code starts sending to a new key, say because it built the key from a name that changed, it gets a new, empty feed. The old key keeps its lines and members: they no longer reach anyone, but they still take space (`@feed/list` and `@storage` count them) until they age out under `max_age` or are deleted.

Move them with `@feed/rename`:

```sharp
@feed/rename walkie/alpha=bravo
```

Every line keeps its id, so ids your code saved still work with `feedmsg()`, and each member keeps how far they have read. If a feed is already at the new key, `@feed/rename` refuses. `@feed/rename/override` merges the two: lines go together in id order, someone on both keeps their place on the new key, and the new key keeps its own settings and locks.

Anything of yours that saved the old key, such as a list of feeds or a tap that files lines by key, has to be changed by your code. To drop the old feed instead, use `@feed/delete walkie/alpha`.

## A small example

This is a whole walkie-talkie system. A wizard runs it once:

```sharp
@create Walkie
@set Walkie=!no_command
@feed/define walkie=Walkie
@feed/set walkie/max_messages=100
&CMD`JOIN Walkie=$+walkie/join *:@feed/join walkie/[lcstr(%0)]=%#; @pemit %#=You tune in to [lcstr(%0)].
&CMD`SAY Walkie=$+walkie *=*:@assert feedmember(walkie/[lcstr(%0)],%#)=@pemit %#=Tune in to %0 first.; @feed/send walkie/[lcstr(%0)]=%1
&CMD`RECALL Walkie=$+walkie/recall *:@pemit %#=[iter(feedrecall(walkie/[lcstr(%0)],10),u(FEED`WALKIE`FORMAT,feedmsg(%i0,text),%#,feedmsg(%i0,speaker),feedmsg(%i0,style),lcstr(%0),feedmsg(%i0,display),%i0),,%r)]
&FEED`WALKIE`FORMAT Walkie=%[%4%] [switch(%3,pose,name(%2) %0,emit,%0,name(%2) says\, "%0")]
@teleport Walkie=#2
```

Then Ann and Bo use it:

```text
> +walkie/join Alpha
You tune in to alpha.
> +walkie alpha=Anyone out there?
[alpha] Ann says, "Anyone out there?"
```

Bo sees the same line. When he poses, Ann sees it:

```text
> +walkie alpha=:waves.
[alpha] Bo waves.
> +walkie/recall alpha
[alpha] Ann says, "Anyone out there?"
[alpha] Bo waves.
```

Someone who has not tuned in is told so:

```text
> +walkie beta=hi
Tune in to beta first.
```

Things to notice:

- `@feed/send` speaks as the player who typed the command (`%#`). A leading `:` poses and `;` semiposes.
- `FEED`WALKIE`FORMAT` on the owner decides how each listener sees a line. It gets `%0` the message, `%1` the listener, `%2` the speaker, `%3` the style, `%4` the feed key, `%5` the name the line was sent under (see `/as` below), and `%6` the line's id.
- Recall uses the same formatter, so a recalled line looks like a live one. `feedrecall()` gives line ids, and `feedmsg()` reads each one.
- `@feed` reports to the object running it, not to the player. Tell the player yourself, and check state with functions such as `feedmember()` and `feedinfo()`.
- A plain `$`-command evaluates what the player typed when it runs (`+walkie alpha=[add(1,2)]` sends `3`). `+radio` avoids that by adding its command with `@command/add/noparse/rsnoparse` and an `@hook/override/inline`, so text reaches the code as typed.

## Sending under another name

`@feed/send/as` stores the name a line appears under, such as a callsign or a persona:

```sharp
@feed/send/as radio/7=Unit 4/En route.
```

The default line and the FORMAT attribute both get that name, and recall keeps it.

## Locks

A kind and each of its feeds have two locks:

- `read` is checked against an object being joined.
- `send` is checked against the speaker.

```sharp
@feed/lock walkie/read=role^police
```

An evaluation lock gets the feed key in `%0` and the kind in `%1`, so one attribute on the owner can answer for every feed. Any other rule, such as moderators or a ban that lasts an hour, belongs to your system. Keep it in your attributes and check it with `testlock()` or `permission()` before calling `@feed`.

## Taps

A tap is another object that hears every line of a kind, for example to copy it into a scene or a staff log:

```sharp
@feed/tap radio=Radio Scene Log/TAP`LOG
```

The attribute is queued for each line with `%0` the line id, `%1` the feed, `%2` who received it, `%3` the speaker, `%4` the style, `%5` the message and `%6` the `/as` name.

## How much a kind holds

`@feed/list` shows each kind you run, with how many feeds and lines it has and how much space the lines take:

```text
> @feed/list
╭───────────────────────────────┤ Feed kinds ├───────────────────────────────╮
│ Kind    Owner       Feeds  Lines  Stored  Taps  Description                │
│ ───────────────────────────────────────────────────────────                │
│ walkie  Walkie(22)      1      2   817 B     0                             │
│ No taps on every kind.                                                     │
╰────────────────────────────────────────────────────────────────────────────╯
```

`feedinfo(<kind>, stored)` and `feedinfo(<kind>/<key>, stored)` give the same figure to code, and `messages`, `feeds` and `bytes` give the others. Every kind starts at 500 lines per feed. Set `max_messages`, `max_age` or `max_bytes` on the kind so a busy system cannot grow without end:

```sharp
@feed/set walkie/max_age=30d
```

A line older than `max_age` is dropped the next time its feed is written to, and in an hourly pass for feeds nobody writes to.

## The +radio package

The bundled `radio` package is a full radio built on a feed kind. Install it from the portal's Packages page. Players get:

```text
> +radio/join pol
[RADIO] Done: You tune in to Police.
> +radio/title Police=Officer
[RADIO] Done: Your title on Police is now Officer.
> +radio pol=Units to the docks.
<Police> Officer Ann says, "Units to the docks."
> +radio/alterego Police=Unit 4
[RADIO] Done: You speak on Police as Unit 4 now.
> +radio pol=Unit 4 en route.
<Police> Officer Unit 4 says, "Unit 4 en route."
> +radio/recall Police=3
==============================< Recall: Police >==============================
<Police> Officer Ann says, "Units to the docks."
<Police> Bo checks in from the harbour.
<Police> Officer Unit 4 says, "Unit 4 en route."
===============================< End of recall >==============================
```

Moderators restrict and list players, and admins create, rename and lock frequencies. `+help radio` on the game lists every command.

How it is split:

- The feed kind `radio` has one feed per frequency, keyed by number: `radio/1`, `radio/2`.
- The `radio` object keeps each frequency's name, category, description, member, moderator and admin lists and locks under `` F`<id>` ``, and each player's title, callsign and colour under `` P`<player>` ``.
- `FEED`RADIO`FORMAT` draws every line, and recall calls the same code.

Read `examples/packages/radio/package.yaml` in the SharpMUSH repository for the code.

## Joining two systems: radio in scenes

The radio knows nothing about scenes, and the scene system knows nothing about the radio. A third package, `radio-scene`, joins them. It depends on both, and adds `+radio/log <frequency>`: what that player hears on the frequency goes into the scene they are in, until `+radio/stoplog`.

```text
> +radio/log Ship
[RADIO] Done: What you hear on Ship goes into your scene until +radio/stoplog.
> +radio/log
[RADIO] Logged into your scene: Ship.
```

It uses three hooks, and changes neither package's code:

- **A tap.** `TAP`LOG` on its own object hears every radio line. For each listener who logs that frequency and is in a scene, it adds the line to the scene with `@scene/addpose`, drawn with the radio's own `FUN`LINE`, once per scene however many people in it are logging.
- **A switch.** The radio looks for `` EXT`<switch> `` on itself before it says a switch does not exist. `radio-scene` attaches `` EXT`LOG `` and `` EXT`STOPLOG `` to the radio object, naming its own object, and the radio runs that object's `` INC`LOG `` with the registers it has already set. Uninstalling `radio-scene` takes the switches away again.
- **A pose type.** It attaches `` TYPE`RADIO `` and `` TYPE`RADIO`FORMAT `` to the Scene Logger, and records each line as the `radio` type with the frequency's name in the pose's `frequency` field. The portal draws a radio line as a message with the radio icon and the frequency in its header; a terminal draws it with the FORMAT, in the reader's `info` colour; and a player who would rather not read them types `+scene/hide radio`. The scene package's [pose types](https://sharpmush.com/guides/scene-pose-types/) guide covers the rest.
- **Help.** It adds `+help radio log` to the radio's help and `+help scene radio` to the scene's, by attaching those topics to each package's help object. `+help radio` and `+help scene` list them as subtopics, and uninstalling `radio-scene` removes them.

One trap when one package's code runs inside another's: a `{{ref}}` in a package's code is looked up on whatever object is running it. While the radio includes `` INC`LOG ``, the radio is the executor, and it holds none of `radio-scene`'s refs. So the included code names the radio `%!`, and its own object comes in a register (`%q<ext>`) that the radio sets before it includes it. `TAP`LOG` runs on `radio-scene`'s own object, so its refs work there.

Read `examples/packages/radio-scene/package.yaml` for the code.
