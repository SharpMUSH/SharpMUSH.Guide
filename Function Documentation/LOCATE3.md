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

