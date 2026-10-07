# A Simple Who command
## Code
```sharp
@create Generic Command Holder
@set Generic Command Holder=!no_command
&cmd`who Generic Command Holder=$+swho:@pemit %#=[u(fun`who)]
&fun`who Generic Command Holder=box(u(fun`who`table,mwho())%r[rule()]%r[words(mwho())] connected,+swho)
&fun`who`table Generic Command Holder=datacolumns({{"nowrap":"1|2|3","priority":"1|1|2"}},Name|[iter(%0,name(%i0),,|)],>Idle|[iter(%0,timestring(idle(%i0)),,|)],>Connected|[iter(%0,timestring(conn(%i0)),,|)])
```

`box()` draws the frame and its title, `rule()` the divider above the count, and `datacolumns()` the table, one `iter()` per column. No width is given anywhere: each reader gets the box at the width their client reported, and the web portal draws it as a card with a table in it. See [Layout](../Guides/Layout.md).

Every column is `nowrap`, so a narrow screen drops Connected (priority 2) rather than breaking a name across lines.

## Invoking the command:
`+swho`

## Expected Output
```text
+=========================< +swho >========================+
| Name                Idle      Connected                  |
| ---------------------------------------                  |
| Thylonicus        6m 37s      1h 0m 21s                  |
| Shaenyl          18m 13s     1h 46m 37s                  |
| Alastair      1h 43m 38s    11h 26m 39s                  |
| Mercutio              0s  2d 8h 19m 34s                  |
| Balerion    6d 9h 2m 14s   6d 9h 2m 15s                  |
+==========================================================+
| 5 connected                                              |
+==========================================================+
```

On a client 34 columns wide:

```text
+============< +swho >===========+
| Name                Idle       |
| ------------------------       |
| Thylonicus        6m 37s       |
| Shaenyl          18m 13s       |
| Alastair      1h 43m 38s       |
| Mercutio              0s       |
| Balerion    6d 9h 2m 14s       |
+================================+
| 5 connected                    |
+================================+
```

The border style is the game's `layout_border` option; these show the default.
