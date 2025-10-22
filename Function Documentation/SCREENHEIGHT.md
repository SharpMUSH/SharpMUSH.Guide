# SCREENHEIGHT
`width(<player|descriptor>[, <default>])`
`height(<player|descriptor>[, <default>])`

  These two functions return the screen width and height for a connected player. If the player's client is capable of doing so, it will let the mush know what the correct sizes are on connection and when the client is resized.

  The defaults are 78 for width, and 24 for height, the normal minimal values. These can be overridden when calling the function by providing the default to the function. Players can change the value that will be returned when the functions are called on them with the special SCREENWIDTH and SCREENHEIGHT commands, both of which take a number as their sole argument, and set the appropriate field.

  When used on something that's not a visible player, the functions return the default values.

  The intent of these functions is allow softcode that does formatting to be able to produce a display that can make full use of any given screen size.

