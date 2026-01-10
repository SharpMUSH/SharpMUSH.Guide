# look
# read
`look [<object>]`
`look <container>'s <object>`
`look <exit>'s <object>`
`look/outside [<object>]`

Displays the description of `<object>`, or the room you're in if you don't name a specific object. You can also look at objects inside others, as long as the `<container>` is not set OPAQUE, or at objects on the other side of an exit, if the exit is set TRANSPARENT or CLOUDY.

If you're inside a container, `look/outside` allows you to look at the room the container is in, or at other objects in your container's location, as long as your container is not set OPAQUE.

See [look2].
# look2
If you look at an object that is not set OPAQUE, you will see any non-DARK items in its inventory. You can look at DARK items in your location if you know what their name is by typing 'look `<object>`', but they will not show up in the list of contents.

When you type 'look' alone, you look at your current location. For a room, this normally shows you the room's description, the list of contents, and any obvious exits from the room. For an object, it shows you the interior description (@idescribe) instead, if one is set.

If a room is set DARK, when you look you will not see any of the exits or contents of the room, unless they are set LIGHT.

'look' may be abbreviated 'l', and is sometimes aliased as 'read'.


## See Also
- [OPAQUE]
- [FLAGS]
- [@describe]
- [@adescribe]
- [@odescribe]
- [DARK]
- [LIGHT]
- [TRANSPARENT]
- [CLOUDY]

