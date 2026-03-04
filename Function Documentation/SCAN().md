# SCAN()
`scan(<looker>, <command>[, <switches>])`<br>
`scan(<command>)`

  This function works like @scan, and returns a space-separated list of dbref/attribute pairs containing $-commands that would be triggered if `<command>` were run by `<looker>`. You must control `<looker>` or be See_All to use this function. Only objects you can examine are included in the output.

  If no `<looker>` is specified, it defaults to the executor.

  `<switches>` is a space-separated list of strings to limit which objects are checked for $-commands. Valid switches are:<br>
    room      --  check `<looker>`'s location and its contents<br>
    me        --  check `<looker>`<br>
    inventory --  check objects in `<looker>`'s inventory<br>
    self      --  check `<looker>` and objects in `<looker>`'s inventory<br>
    zone      --  check `<looker>`'s location's zone, and `<looker>`'s own zone<br>
    globals   --  check objects in the Master Room<br>
    all       --  all of the above (the default)<br>
    break     --  once a match is found, don't check in other locations

  The order of searching for the "break" switch is the same as the order for normal $-command matching, as described in [evaluation order].


**See Also:**
- [@scan]
- [@sweep]
- [MASTER ROOM]
- [EVALUATION ORDER]
- [$-COMMANDS]

