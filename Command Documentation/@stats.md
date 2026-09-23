# @stats
`@stats [<player>]`<br>
`@stats/tables`<br>
`@stats/flags`<br>
`@stats/chunks`<br>
`@stats/regions`<br>
`@stats/paging`<br>
`@stats/freespace`

In its first form, display the number of objects in the game broken down by object types: `<total> objects = <rooms> rooms, <exits> exits, <things> things, <players> players.` With a `<player>`, only the objects that player owns are counted. Anyone may count their own objects (`@stats me`) or the whole game's; counting another player's objects needs the Search power or wizard/royalty privileges. A destroyed object is removed rather than kept as garbage, so there is no garbage count.

`@stats/tables` lists SharpMUSH's lookup tables — built-in functions, @functions, commands, flags, powers, attribute definitions, config options and connections — with the number of entries in each.<br>
`@stats/flags` reports, for the FLAG and POWER flagspaces, how many definitions each has and how objects' sets of flags are distributed.

`@stats/chunks`, `/regions`, `/paging` and `/freespace` report PennMUSH's attribute-chunk allocator. SharpMUSH keeps attributes in its database provider and has no chunk allocator, so these switches say so and return `#-1 NOT SUPPORTED`.

