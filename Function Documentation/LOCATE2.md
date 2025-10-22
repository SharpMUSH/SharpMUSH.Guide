# LOCATE2

  You can control where to look with:
    a - Absolute match (match `<name>` against any dbref)
    c - Exits in the room `<looker>`
    e - Exits in `<looker>`'s location
    h - If `<name>` is "here", return `<looker>`'s location
    i - Match `<name>` against the names of objects in `<looker>`'s inventory
    l - Match `<name>` against the name of `<looker>`'s location
    m - If `<name>` is "me", return `<looker>`'s dbref
    n - Match `<name>` against the names of objects in `<looker>`'s location
    p - If `<name>` begins with a *, match the rest against player names
    z - English-style matching (my 2nd book) of `<name>` (see [matching])
    * - All of the above (try a complete match). Default when no match parameters are given.
    y - Match `<name>` against player names whether it begins with a * or not
    x - Only match objects with the exact name `<name>`, no partial matches
    s - Only match objects which `<looker>` controls. You must control `<looker>` or have the See_All power.

  Just string all the parameters together. Spaces are ignored, so you can use spaces between paramaters for clarity if you wish.

  See [locate3] for examples.

## See Also
- [num()]
- [rnum()]
- [pmatch()]
- [room()]
- [where()]
- [rloc()]
- [findable()]
# LOCATE3

  Examples:
```
Find the dbref of the player whose name matches %0, or %#'s dbref if %0 is "me".
think locate(%#, %0, PFym)
'PF' matches objects of type 'player' and nothing else, 'm' checks for the string "me", and 'y' matches the names of players.
```

  Find the dbref of an object near %# called %0, including %# himself and his location. Prefer players or things, but accept rooms or exits if no players or things are found.
    > think locate(%#, %0, PThmlni)
  This prefers 'P'layers or 'T'hings, and compares %0 against the strings "here" and "me", and the names of %#'s location, his neighbours, and his inventory.

