# Layout: Boxes, Tables and Sheets

SharpMUSH draws screens with layout functions instead of padding text by hand. You describe the shape once: a box with a title, a table, a list of labelled values. Each reader then gets it in the form their client can show:

- A telnet client gets box art, laid out at the width that client reported.
- A client without Unicode gets the same art in ASCII (`+`, `-`, `=`, `|`).
- The web portal gets page structure: a bordered card, a real table that hides columns on a phone, a definition list.
- A screen reader gets the content alone, in reading order, with no borders.

`align()`, `center()` and `ljust()` still work, but what they draw is fixed text: one width for everyone, the same in the portal as in a terminal, and nothing for a screen reader to skip. Use the layout functions for anything a player reads as a screen. The `header()` and `footer()` many PennMUSH games define are `rule(<title>)` here.

See `help layout functions` on the game for every function and option, and `help layout borders` for border styles.

## The pieces

| You want | Use |
|---|---|
| A titled frame round a screen | `box(<body>, <title>)` |
| A divider, with or without a title | `rule(<title>)` on a line of its own inside the box |
| `Label: value` lines, values lined up | `fields(<options>, <label>, <value>, ...)` |
| A table from rows you write out | `datatable(<options>, <headings>, <row>, ...)` |
| A table from lists you compute | `datacolumns(<options>, <column>, ...)` |
| Names in as many columns as fit | `grid(<list>)` |
| A bulleted or numbered list | `bullets(<list>)` |
| Items under their parents | `tree(<options>, node(...))` |
| Things side by side | `flex(<options>, item(...), ...)` |
| A bar for HP, progress, a vote | `gauge(<value>, <max>, <label>)` |
| A coloured status tag | `badge(<text>, ok)` |

Layouts nest. A `fields()`, `datatable()`, `flex()` or `tree()` on a line of its own inside a `box()` keeps its layout inside the box, and a `rule()` on a line of its own becomes a divider meeting the box's sides.

```sharp
think box(fields(,Species,Human,Job,Dark Warrior,Online,1h)%r[rule(Quote)]%rHooooo?,Mannaz Byron,50)
```

```text
+================< Mannaz Byron >================+
| Species: Human                                 |
| Job:     Dark Warrior                          |
| Online:  1h                                    |
+====================< Quote >===================+
| Hooooo?                                        |
+================================================+
```

A footer is a `rule()` with no title and the line under it:

```sharp
think box(%q<body>%r[rule()]%r+help <topic> reads one,Help)
```

## Width: leave it empty

Every layout function except `badge()` takes a width: `box()` and `rule()` as an argument, the others as a `"width"` option. Leave it out. The layout is then drawn at the width of the connection that ran the command, and each telnet reader is sent it again at the width their own client reported. That is also what makes an `@remit` right for everyone in the room.

Passing `width(%#)` fixes the width to the enactor's for every reader, and a number fixes it for everyone. Use a number only where the width is part of the design, such as a gauge of a set length. Where an example on this page passes a number, it is to keep its output predictable.

## Options are a JSON object

Every option argument is one JSON object. Written straight into an argument it needs a second pair of braces, because the outer pair only keeps its commas together:

```sharp
think box(Hello,Greeting,30,{{"title":"left","pad":2}})
```

Build it with `json()` when a value is computed, or when it holds a character a softcode argument would eat:

```sharp
think box(Body,Title,30,json(object,border,"[if(%q<formal>,double,single)]"))
```

An unknown or misspelled key is an error, not a silent no-op: `#-1 UNKNOWN LAYOUT OPTION <KEY>`.

In a package's `package.yaml`, `{{` starts a reference to an object (`{{jobs}}`), so an inline option object there is refused at install. Build options with `json()` in a package.

## Tables

`datatable()` takes the rows written out, each row's cells split by `|`. A heading starting with `<`, `-` or `>` places its column left, centred or right, as in `align()`. Column widths come from the content, so there is no width arithmetic to keep in step with the headings.

When the table is too wide, wrapping columns give way first, then the least important column is left out, then the next. Say which matter with `"priority"` (1 is the most important, and among equals the rightmost goes first). A column wraps unless `"nowrap"` names it, and a wrapping column with no `"min"` will narrow to a letter or two per line before anything is dropped. So:

- Mark every column that holds a name, a number, a time or a status `"nowrap"`. It is then shown whole or not at all.
- Leave free text (a title, a description) wrapping, and give it a `"min"` it is still readable at.
- Give the columns a reader can do without a higher `"priority"` number.
- Give the free-text column a `"grow"` share, such as `"grow":"|1"`, when the table should span the screen. Without one, a table is only as wide as its cells.

```sharp
think box(datatable({{"priority":"1|1|3|2","nowrap":"1|4","min":"|10|8|"}},>ID|Title|Where|>Cast,12|Tea at the Docks|Harbour|3,14|Night Watch|Gate|2),Scenes,40)
```

```text
+==============< Scenes >==============+
| ID  Title             Where     Cast |
| ------------------------------------ |
| 12  Tea at the Docks  Harbour      3 |
| 14  Night Watch       Gate         2 |
+======================================+
```

At 26 columns, Where (priority 3) is left out and Title wraps:

```text
+=======< Scenes >=======+
| ID  Title         Cast |
| ---------------------- |
| 12  Tea at the       3 |
|     Docks              |
| 14  Night Watch      2 |
+========================+
```

A table built from a list is a column at a time: `datacolumns()` takes each column as its heading and then its cells, so one `iter()` makes one column.

```sharp
&FUN`WHO obj=box(datacolumns({{"nowrap":"1|2|3","priority":"1|1|2"}},Name|[iter(mwho(),name(%i0),,|)],>Idle|[iter(mwho(),timestring(idle(%i0)),,|)],>Connected|[iter(mwho(),timestring(conn(%i0)),,|)]),Who's Online)
```

**Player text needs another delimiter.** A title or a description can hold a `|`, which would split it into two cells. Join those columns with `%r` and make a newline the delimiter, built with `json()`:

```sharp
think datacolumns(json(object,delim,json(string,%r)),ID%r[iter(%q<scenes>,%i0,,%r)],Title%r[iter(%q<scenes>,scene(%i0,title),,%r)])
```

The option lists (`"nowrap"`, `"min"`, `"max"`, `"priority"`, `"grow"`) are split by the same delimiter as the cells, so with a newline delimiter they are written with `%r` too:

```sharp
json(object,delim,json(string,%r),nowrap,json(string,1%r3),min,json(string,%r12))
```

Written `"1|3"`, the list is one item that is not a column number, and the table answers `#-1 ARGUMENT OUT OF RANGE`.

Writing `{{"delim":"\n"}}` inline does not work: the evaluator eats the backslash, the delimiter becomes the letter `n`, and the table comes out empty with no error.

An empty list still draws the headings. Say so in words instead:

```sharp
think box(if(words(%q<scenes>),<the table>,No scenes.),Scenes)
```

## Themes

A theme sets the colours and border pieces of every layout: the box's lines, its title, field labels, bullets, gauges. Leave it to the player. Each player picks theirs with `@theme me=<theme>`, and a layout with no `"theme"` option is drawn in it, or in the game's `layout_theme` when they have none. `@theme/list` shows the themes the game offers, and `think themes()` gives their names as a list.

Pass `"theme"` only where a layout must look the same for everyone, such as a red warning. It wins over the player's choice:

```sharp
think box(fields(,Name,Mira,Faction,Rebel,Status,On watch),Character,36,{{"theme":"harbour"}})
```

```text
╔═══════════╡ Character ╞══════════╗
║ Name:    Mira                    ║
║ Faction: Rebel                   ║
║ Status:  On watch                ║
╚══════════════════════════════════╝
```

That is the box as a Unicode client gets it, its colours left out. `harbour` is not built in: staff with `layout.admin` added it with `@theme/add harbour={{"preset":"nord","colors":{"primary":"#bf616a"}}}`.

A player with no theme of their own takes the `THEME` of their parent, then of the player ancestor, so a theme can follow from what a character is. `@theme` works on any object you control, and keeps the text exactly as typed. It is evaluated each time it is needed, as the player, so `%#` is the player:

```sharp
@theme Rebel Faction=horror
@theme #4=[switch(get(%#/FACTION),Rebel,horror,Crown,nord)]
```

The first gives everyone parented to `Rebel Faction` the horror theme. The second, on the player ancestor, picks by each player's `FACTION`, and a player it picks nothing for gets the game's theme.

The theme is worked out when the player connects, when `@theme` changes it, and on `@theme/refresh <player>`. Code that changes what a theme depends on refreshes it in the same action. This one sets an attribute on the player, so its object needs to control them (here, the `WIZARD` flag):

```sharp
&CMD`JOIN Faction Desk=$+join *:&FACTION %#=%0; @theme/refresh %#
```

Two things catch people out:

- **JSON goes in two pairs of braces**, the same as layout options: `@theme me={{"seed":"#d08770"}}`.
- **Lists need `\[ \]`.** `@theme` keeps code, and code runs `[ ]` even inside braces, so a list in a theme is typed `\["( "," )"\]`.

The full guide, for staff as well as coders, is [Layout Themes](https://sharpmush.com/guides/layout-themes/) on the docs site.

## Colour that means something: tone()

`ansi()` paints a colour. `tone()` paints a meaning: one of the theme's colours, named for what it is for. Each reader sees it in their own theme, so an out-of-character remark is in everyone's `muted` colour, whatever their `muted` is.

```sharp
think tone(muted,<OOC> Back in five.)
```

```text
<OOC> Back in five.
```

The colours are `foreground`, `primary`, `secondary`, `tertiary`, `muted`, `success`, `warning`, `error` and `info`. Like a layout, a tone is painted when the line is sent, not when it is written: a player who changes `@theme` sees their new colour on the next line, and the portal paints it from the reader's portal theme. A reader with no theme gets the game's `layout_theme` colour, or a standard one: grey for `muted`, cyan for `info`, green, yellow and red for `success`, `warning` and `error`.

Use `tone()` where the colour says what kind of thing the text is, and `ansi()` where the colour is the point, such as a name colour a player chose. The scene package draws its pose types with it.

## Things to avoid

- **Editing a layout afterwards.** The result is text, so `strlen()` and listen patterns work on it, but a layout cut or edited by another function (`left()`, `edit()`) is shown as the text it now is, in the portal too, and is no longer re-laid out for each reader. Build the layout last. Colour belongs inside it: in the cells, in a border piece (`"top":"[ansi(hb,=)]"`), or through `gradient()`.
- **Choosing a border for the game.** The game's `layout_border` option sets the default style. Pass `"border"` only where a box should differ from the rest of the game.
- **A layout mid-line.** Only a layout on a line of its own nests inside a box. `Status: [badge(Open,ok)]` is fine inline; a `datatable()` after other text on the same line falls apart into scattered lines.
- **Unicode in your own art.** A client without UTF-8 is sent the box-drawing characters as ASCII, but text you put in a cell is sent as it is. Keep your own pieces ASCII unless they are box-drawing characters.
