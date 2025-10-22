# ROOM()
`room(<object>)`

  Returns the "absolute" location of an object. This is always a room; it is the container of all other containers of the object. The "absolute" location of an object is the place @lemit messages are sent to and NO_TEL status determined. You must control the object, be See_All, or be near the object in order for this function to work. The exception to this are players; if `<object>` is a player, the ROOM() function may be used to find the player's absolute location if the player is not set UNFINDABLE.


## See Also
- [loc()]
- [rloc()]
- [rnum()]
- [where()]

