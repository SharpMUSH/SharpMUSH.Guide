# LOCATE()
`locate(<looker>, <name>, <parameters>)`

  This function attempts to find an object called `<name>`, relative to the object `<looker>`. It's similar to the num() function, but you can be more specific about which type of object to find, and where to look for it. When attempting to match objects near to `<looker>` (anything but absolute, player name or "me" matches), you must control `<looker>`, have the See_All power or be nearby.

  `<parameters>` is a string of characters which control the type of the object to find, and where (relative to `<looker>`) to look for it.

  You can control the preferred types of the match with:
    N - No type (this is the default)
    E - Exits
    L - Prefer an object whose Basic @lock `<looker>` passes
    P - Players
    R - Rooms
    T - Things
    F - Return #-1 if what's found is of a different type than the preferred one.
    X - Never return #-2. Use the last dbref found if the match is ambiguous.

  If type(s) are given, locate() will attempt to find an object with one of the given types first. If none are found, it will attempt to find any type of object, unless 'F' is specified, in which case it will return #-1.

  See [locate2].

