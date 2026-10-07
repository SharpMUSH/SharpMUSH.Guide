# Layout: Boxes, Tables and Sheets

SharpMUSH draws screens with layout functions instead of padding text by hand. You describe the shape once: a box with a title, a table, a list of labelled values. Each reader then gets it in the form their client can show:

- A telnet client gets box art, laid out at the width that client reported.
- A client without Unicode gets the same art in ASCII (`+`, `-`, `=`, `|`).
- The web portal gets page structure: a bordered card, a real table that hides columns on a phone, a definition list.
- A screen reader gets the content alone, in reading order, with no borders.

`align()`, `center()`, `ljust()` and `header()` still work, but what they draw is fixed text: one width for everyone, the same in the portal as in a terminal, and nothing for a screen reader to skip. Use the layout functions for anything a player reads as a screen.

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

Passing `width(%#)` fixes the width to the enactor's for every reader, and a number fixes it for everyone. Use a number only where the width is part of the design, such as a gauge of a set length. The examples on this page pass one so their output is predictable.

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

The option lists (`"nowrap"`, `"min"`, `"max"`, `"priority"`) are split by the same delimiter as the cells, so with a newline delimiter they are written with `%r` too:

```sharp
json(object,delim,json(string,%r),nowrap,json(string,1%r3),min,json(string,%r12))
```

Written `"1|3"`, the list is one item that is not a column number, and the table answers `#-1 ARGUMENT OUT OF RANGE`.

Writing `{{"delim":"\n"}}` inline does not work: the evaluator eats the backslash, the delimiter becomes the letter `n`, and the table comes out empty with no error.

An empty list still draws the headings. Say so in words instead:

```sharp
think box(if(words(%q<scenes>),<the table>,No scenes.),Scenes)
```

## Things to avoid

- **Editing a layout afterwards.** The result is text, so `strlen()` and listen patterns work on it, but a layout cut or edited by another function (`left()`, `edit()`) is shown as the text it now is, in the portal too, and is no longer re-laid out for each reader. Build the layout last. Colour belongs inside it: in the cells, in a border piece (`"top":"[ansi(hb,=)]"`), or through `gradient()`.
- **Choosing a border for the game.** The game's `layout_border` option sets the default style. Pass `"border"` only where a box should differ from the rest of the game.
- **A layout mid-line.** Only a layout on a line of its own nests inside a box. `Status: [badge(Open,ok)]` is fine inline; a `datatable()` after other text on the same line falls apart into scattered lines.
- **Unicode in your own art.** A client without UTF-8 is sent the box-drawing characters as ASCII, but text you put in a cell is sent as it is. Keep your own pieces ASCII unless they are box-drawing characters.
